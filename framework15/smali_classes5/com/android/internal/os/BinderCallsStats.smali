.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;,
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    }
.end annotation


# static fields
.field private static final blacklist BINDER_STATS_FILE_SIZE_THRESHOLD:J = 0x200000L

.field private static final blacklist CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final blacklist CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final blacklist DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final blacklist DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field private static final blacklist DEFAULT_EXTRA_INFO_ENTRY_NUM:I = 0x5

.field public static final blacklist DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field protected static final blacklist DEFAULT_TOP_ENTRY_NUMBER:I = 0x5

.field public static final blacklist DEFAULT_TRACK_DIRECT_CALLING_UID:Z = true

.field public static final blacklist DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final blacklist DETAILED_TRACKING_DEFAULT:Z = true

.field public static final blacklist ENABLED_DEFAULT:Z = true

.field private static final blacklist EXCEPTION_COUNT_OVERFLOW_NAME:Ljava/lang/String; = "overflow"

.field private static final blacklist INTERVAL_NEEDED_RESET_DATA_TIME_MILLIS:J = 0x2932e00L

.field public static final blacklist MAX_BINDER_CALL_STATS_COUNT_DEFAULT:I = 0x5dc

.field private static final blacklist MAX_EXCEPTION_COUNT_SIZE:I = 0x32

.field private static final blacklist OVERFLOW_BINDER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERFLOW_DIRECT_CALLING_UID:I = -0x1

.field private static final blacklist OVERFLOW_PACKAGE_NAME:Ljava/lang/String; = "OVERFLOW"

.field private static final blacklist OVERFLOW_SCREEN_INTERACTIVE:Z = false

.field private static final blacklist OVERFLOW_TRANSACTION_CODE:I = -0x1

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I = 0x3e8

.field public static final blacklist SAVED_LOCATION_FLAG:I = -0x1

.field public static final blacklist SHARDING_MODULO_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallsStats"


# instance fields
.field private blacklist mAddDebugEntries:Z

.field private blacklist mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private final blacklist mBinderStats:Lcom/android/internal/os/BinderStats;

.field private final blacklist mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderInternal$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallStatsCount:J

.field private blacklist mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

.field private final blacklist mCallStatsObserverHandler:Landroid/os/Handler;

.field private blacklist mCallStatsObserverRunnable:Ljava/lang/Runnable;

.field private blacklist mCollectLatencyData:Z

.field private blacklist mCollectedCallCount:J

.field private blacklist mCollectedCpuTime:J

.field private blacklist mCpuUsageThreshold:I

.field private blacklist mDetailedTracking:Z

.field private blacklist mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private blacklist mEnablePackageStats:Z

.field private final blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEntryLock:Ljava/lang/Object;

.field private final blacklist mExceptionCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIgnoreBatteryStatus:Z

.field private blacklist mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxBinderCallStatsCount:I

.field private volatile blacklist mNativeTids:Landroid/util/IntArray;

.field private final blacklist mNativeTidsLock:Ljava/lang/Object;

.field private blacklist mNeededResetDataTime:J

.field private blacklist mPeriodicSamplingInterval:I

.field private final blacklist mPidToPackageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRandom:Ljava/util/Random;

.field private blacklist mRecordingAllTransactionsForUid:Z

.field private blacklist mSendUidsToObserver:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShardingModulo:I

.field private blacklist mShardingOffset:I

.field private blacklist mStartCurrentTime:J

.field private blacklist mStartCurrentTimeForSEC:J

.field private blacklist mStartElapsedTime:J

.field private blacklist mTrackDirectCallingUid:Z

.field private blacklist mTrackScreenInteractive:Z

.field private final blacklist mUidAllEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUidEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$VxATgQ4pwdWgZhH6ILNAX8h8dUY(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YZ_MvQpXqsFJ8ZTpGKTiHFfrDMM(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$glVOinHoNXA5oSPdo2KZ5VIlmMY(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTimeForSEC:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    new-instance v0, Lcom/android/internal/os/BinderStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    return-void
.end method

.method private blacklist canCollect()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private static blacklist compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 6

    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static blacklist compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method private static blacklist compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private blacklist createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__DEBUG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    return-object v1
.end method

.method private blacklist dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    :goto_0
    const-string v6, "Start time: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    iget-wide v7, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v6, "On battery time (ms): "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v6}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sampling interval period: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sharding modulo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    const-string v7, "(top 90% by cpu time) "

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Per-UID raw data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(package/uid, worksource, call_desc, screen_interactive, cpu_time_micros, max_cpu_time_micros, latency_time_micros, max_latency_time_micros, exception_count, max_request_size_bytes, max_reply_size_bytes, recorded_call_count, call_count):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    if-eq v3, v4, :cond_4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v10

    :goto_3
    nop

    goto :goto_5

    :cond_4
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v10

    :goto_4
    nop

    :goto_5
    new-instance v11, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v14, "__DEBUG_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "    "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    invoke-virtual {v2, v15}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x23

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v15, v10

    iget-wide v9, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move v13, v5

    iget-wide v4, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v16, 0x5f

    if-eqz v10, :cond_7

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, v16

    :goto_7
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_8

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, v16

    :goto_8
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_9

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_9

    :cond_9
    move-wide/from16 v10, v16

    :goto_9
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move-object v11, v5

    move v5, v13

    move-object v10, v15

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_a
    move v13, v5

    move-object v15, v10

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    mul-int/lit8 v5, v3, -0x1

    invoke-direct {v0, v5}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v20, v11

    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v10

    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v10

    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v11, v20, v10

    move-object v5, v15

    move-wide/from16 v9, v16

    move-wide/from16 v14, v18

    goto :goto_b

    :cond_b
    move-wide/from16 v20, v11

    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v5, :cond_c

    iget-object v14, v0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v10

    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v9

    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v9

    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v9

    add-int/lit8 v10, v21, 0x1

    goto :goto_a

    :cond_c
    move/from16 v21, v10

    new-instance v9, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;

    invoke-direct {v9}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v9}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-object v5, v15

    move-wide/from16 v9, v16

    move-wide/from16 v14, v18

    :goto_b
    move-object/from16 v16, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, "Per-UID Summary "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(cpu_time, % of total cpu_time, recorded_call_count, call_count, package/uid):"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v13, :cond_d

    move-object v5, v4

    move-object/from16 v18, v7

    goto :goto_c

    :cond_d
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;-><init>()V

    move-object/from16 v18, v7

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v7, v8}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v5

    :goto_c
    nop

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-object/from16 v19, v4

    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v23, v7

    iget-wide v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v6, v6

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v24

    move-wide/from16 v24, v9

    long-to-double v9, v14

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v5, v6, v7, v9, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v5, :cond_e

    invoke-direct {v0, v1, v8}, Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V

    :cond_e
    move-object/from16 v4, v19

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v23

    move-wide/from16 v9, v24

    goto :goto_d

    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-wide/from16 v24, v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    long-to-double v6, v14

    move-wide/from16 v8, v24

    long-to-double v2, v8

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_e

    :cond_10
    move-wide/from16 v8, v24

    :goto_e
    const-string v2, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    new-instance v3, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "  %6d %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_11
    iget v3, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private blacklist getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 3

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    return-object v0
.end method

.method private blacklist getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 3

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getHashCode(II)I
    .locals 2

    move v0, p2

    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    return v1
.end method

.method public static blacklist getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;D)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const-wide/16 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    mul-double v8, p2, v1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v7}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v8

    add-double/2addr v4, v8

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method

.method private blacklist getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    mul-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v1, "__DEBUG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$dumpLocked$3(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$4(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$5(Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dumpLocked$6(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getExportedCallStats$1(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getHeaviestApplicationUid$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    return-wide v0
.end method

.method static synthetic blacklist lambda$printCallStatsByPackage$2(Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    return-wide v0
.end method

.method private blacklist noteBinderThreadNativeIds()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    return-void
.end method

.method private blacklist noteCallsStatsDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist noteNativeThreadId()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    move v1, v4

    if-gez v1, :cond_1

    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/IntArray;->add(II)V

    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private blacklist prepareExportedCallStats(I)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    move/from16 v4, p1

    if-lt v4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    sub-long/2addr v8, v10

    const-string v0, "BinderCallsStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected cpu time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, collected call count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v0, :cond_5

    iget-object v11, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v12, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    mul-int/lit8 v12, v12, -0x1

    invoke-direct {v1, v12}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v12

    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-wide v2, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long/2addr v13, v2

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    invoke-virtual {v11}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$CallStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    :try_start_1
    iget v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v24, v5

    goto/16 :goto_5

    :cond_1
    :goto_3
    :try_start_2
    iget v14, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iget-object v15, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v13, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    move/from16 v20, v0

    iget-boolean v0, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move-wide/from16 v21, v8

    iget-wide v8, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    move-object/from16 v23, v2

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v24, v5

    int-to-long v4, v2

    cmp-long v2, v8, v4

    if-ltz v2, :cond_2

    const/16 v18, 0x1

    goto :goto_4

    :cond_2
    const/16 v18, 0x0

    :goto_4
    :try_start_3
    iget-object v2, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    move v4, v13

    move-object v13, v12

    move/from16 v16, v4

    move/from16 v17, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v2, :cond_3

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    :cond_3
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    move/from16 v4, p1

    move/from16 v0, v20

    move-wide/from16 v8, v21

    move-object/from16 v2, v23

    move/from16 v5, v24

    goto/16 :goto_2

    :cond_4
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p1

    goto/16 :goto_1

    :cond_5
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v24, :cond_6

    invoke-direct {v1, v6}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "start_time_millis"

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "battery_time_millis"

    iget-object v2, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sampling_interval"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sharding_modulo"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v6

    :catchall_1
    move-exception v0

    move/from16 v24, v5

    :goto_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method private blacklist printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget-object v3, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    if-nez v3, :cond_0

    new-instance v4, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    invoke-direct {v4, p0}, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v3, v4

    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_2

    const-string v6, "          "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, " (%3.0f%%/%8d/%8d/%s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    goto :goto_2

    :cond_3
    return-void
.end method

.method private blacklist processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-boolean v4, v2, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    goto :goto_0

    :cond_2
    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v4, :cond_3

    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    move v5, v4

    move-object v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v8, v10

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    :goto_1
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    move v15, v0

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    nop

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    :goto_3
    move v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingPid()I

    move-result v13

    const/4 v0, 0x0

    iget-boolean v11, v1, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v11, :cond_8

    if-lez v13, :cond_7

    invoke-virtual {v1, v13, v14}, Lcom/android/internal/os/BinderCallsStats;->getPackageName(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_7
    const-string v11, "async"

    :goto_4
    move-object v0, v11

    move-object/from16 v22, v0

    goto :goto_5

    :cond_8
    move-object/from16 v22, v0

    :goto_5
    iget-object v12, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    const-wide/16 v23, 0x1

    add-long v10, v10, v23

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v10, :cond_9

    :try_start_1
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    goto/16 :goto_b

    :cond_9
    if-nez v4, :cond_a

    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v10

    :cond_a
    :try_start_2
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    if-eqz v5, :cond_f

    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v10, v6

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-object v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v11, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v16, 0x0

    move/from16 v17, v11

    move-object v11, v4

    move-object/from16 v25, v12

    move v12, v14

    move/from16 v26, v13

    move-object v13, v10

    move v10, v14

    move/from16 v14, v17

    move-object/from16 v17, v22

    :try_start_3
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v11

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-nez v12, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_c

    :try_start_4
    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v12, v12, v23

    iput-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    goto/16 :goto_b

    :cond_c
    :goto_7
    :try_start_5
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v12, v6

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v12, v8

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iget-boolean v12, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v12, :cond_e

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v14, v2, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    move-wide/from16 v23, v16

    :goto_8
    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    int-to-long v5, v14

    :try_start_6
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iget-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v7, p3

    int-to-long v12, v7

    :try_start_7
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    goto :goto_9

    :catchall_2
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_b

    :cond_e
    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    :goto_9
    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    goto :goto_b

    :cond_f
    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    iget-object v0, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v5, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    move-object/from16 v16, v4

    move/from16 v17, v10

    move-object/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v15

    move-object/from16 v21, v22

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    :cond_10
    :goto_a
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_11

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    monitor-exit v25

    return-void

    :catchall_4
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    :goto_b
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_b
.end method

.method private blacklist resetForSEC()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTimeForSEC:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist resolveBinderMethodNames(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v2}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v6

    :goto_2
    if-eqz v0, :cond_2

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v8, v9, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    if-nez v7, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v1

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object v1, v6

    iput-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method private blacklist shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_0

    :cond_1
    const/16 v3, 0x4d5

    :goto_0
    add-int/2addr v2, v3

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static blacklist startForBluetooth(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iput p2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    :cond_3
    :goto_0
    return-object v1
.end method

.method public blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1

    const-string/jumbo v3, "overflow"

    move-object v1, v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BinderCallsStats"

    const-string v2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .locals 2

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sampling interval period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderStats;->dump(Ljava/io/PrintWriter;)V

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of pid entry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist enablePackageStats(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    return-void
.end method

.method protected blacklist getCallingPid()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method protected blacklist getCallingUid()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist getCollectLatencyData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExceptionCounts()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getExportedCallStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(IZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    mul-int/lit8 v2, p1, -0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist getExportedCallStats(Z)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x5

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-virtual {v7}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v10, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v10, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v11, p1

    :try_start_1
    invoke-direct {v1, v10, v11}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    iget v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    iget-boolean v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    iget-object v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    if-nez v12, :cond_1

    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    move-object v12, v13

    new-instance v13, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    iget v14, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v15, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-direct {v13, v1, v14, v15, v0}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    move-object v0, v13

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    move-object v15, v8

    goto :goto_2

    :cond_1
    move/from16 v16, v0

    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-object v0, v7

    move-object v15, v8

    iget-wide v7, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v13, v7

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    move-object v0, v7

    move-object v15, v8

    :goto_2
    move-object v7, v0

    move-object v8, v15

    move/from16 v0, v16

    goto/16 :goto_1

    :cond_3
    move/from16 v11, p1

    move/from16 v16, v0

    move-object v0, v7

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_4
    move/from16 v11, p1

    move/from16 v16, v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "start_time_millis"

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "battery_time_millis"

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v5}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sampling_interval"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sharding_modulo"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v3

    :catchall_0
    move-exception v0

    move/from16 v11, p1

    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public blacklist getExportedCallStatsPerPackage()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-virtual {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "start_time_millis"

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "battery_time_millis"

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sampling_interval"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sharding_modulo"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    mul-int/lit8 v2, p1, -0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist getExportedExceptionStats()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .locals 14

    const-string v0, "UID:"

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    iget-object v7, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v8, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    move v6, v5

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const-string v8, "BinderCallsStats"

    if-ge v7, v6, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Top["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] UID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v10, v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", CallCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v10, v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v10, v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), cpuTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v10, v10, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    long-to-float v10, v3

    div-float/2addr v9, v10

    float-to-int v10, v9

    if-lt v10, p1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Heavy Binder Caller is detected. It occupies "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%.2f"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "% in the binder_calls_stats"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getExtraInfo(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    iget v12, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-interface {v11, v12}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    if-nez v10, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to get package name for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v12, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extra info : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v10, v0, v9, v2}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IFLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v2
.end method

.method public blacklist getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected blacklist getNativeTid()I
    .locals 1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public blacklist getNativeTids()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getPackageName(II)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    const-string v2, "<pre-initialized>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/%d/cmdline"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "unknown"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred during closing file..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred ..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v4, "unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v4

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    const-string v3, "dumpsys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :cond_4
    const-string v3, "BinderCallsStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is dumpsys command...from (uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") We will not add it into HashMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0

    :goto_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    const-string v5, "BinderCallsStats"

    const-string v6, "IO errors occurred during closing file..."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_5
    :goto_5
    nop

    :goto_6
    throw v3

    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3
.end method

.method protected blacklist getThreadTimeMicro()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUidEntries()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist init()V
    .locals 8

    const-string v0, "Failed to close file, /data/log/binder_calls_stats"

    const-string v1, "BinderCallsStats"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderStats;->read(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_4
    const-string v5, "Exception occurred during load from file"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_3
    move-exception v4

    :try_start_6
    const-string v5, "The file does NOT exist... /data/log/binder_calls_stats"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    throw v4
.end method

.method public blacklist isNeededResetData()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v3}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v5, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x2932e00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    monitor-exit v2

    const/4 v2, 0x1

    return v2

    :cond_0
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist recordAllCallsForWorkSourceUid(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording all Binder calls for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderCallsStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v1

    iput-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    mul-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    iput-boolean v0, v2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    return-void
.end method

.method public blacklist reportProcessDied(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs blacklist reset([Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, p1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist setAddDebugEntries(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    return-void
.end method

.method public blacklist setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method public blacklist setCollectLatencyData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return-void
.end method

.method public blacklist setCpuUsageThreshold(I)Z
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cpu usage threshold value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallsStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDetailedTracking(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    return-void
.end method

.method public blacklist setIgnoreBatteryStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setMaxBinderCallStats(I)V
    .locals 3

    if-gtz p1, :cond_0

    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid max value (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSamplingInterval(I)V
    .locals 3

    if-gtz p1, :cond_0

    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setShardingModulo(I)V
    .locals 3

    if-gtz p1, :cond_0

    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTrackDirectCallerUid(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTrackScreenInteractive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist shouldRecordDetailedData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist store(II)V
    .locals 10

    invoke-direct {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->prepareExportedCallStats(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTimeForSEC:J

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    if-lt p2, v3, :cond_3

    new-instance v3, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    invoke-direct {v4}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;-><init>()V

    iput-wide v1, v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {p0, v6}, Lcom/android/internal/os/BinderCallsStats;->isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    invoke-direct {v7}, Lcom/android/internal/os/BinderStats$BinderStatsUnit;-><init>()V

    iget v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iput v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    iget-object v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    iget-wide v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    iget-wide v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    iget-wide v8, v6, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iput-wide v8, v7, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    invoke-virtual {v4, v7}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-lez v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "BinderCallsStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "store() invoked. mEntries size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist writeToFile()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BinderCallsStats"

    const-string v2, "Nothing to write to file. Just return"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BinderStats;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-string v2, "BinderCallsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The state of stats data looks abnormal. parcel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), entry_num("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4}, Lcom/android/internal/os/BinderStats;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_3
    const-string v4, "BinderCallsStats"

    const-string v5, "Exception occurred during writing file"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    :cond_4
    :goto_3
    nop

    throw v1

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
