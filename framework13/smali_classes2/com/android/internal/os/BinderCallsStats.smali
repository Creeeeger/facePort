.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;,
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;
    }
.end annotation


# static fields
.field private static final blacklist BINDER_STATS_FILE_SIZE_THRESHOLD:J = 0x200000L

.field private static final blacklist CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final blacklist CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final blacklist DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final blacklist DEBUG_LEVEL_LOW:Z

.field public static final blacklist DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field public static final blacklist DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field private static final blacklist DEFAULT_TOP_ENTRY_NUMBER:I = 0x5

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

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

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
.method public static synthetic blacklist $r8$lambda$2mV8S8yp1kRIXGIMfT1sN1ZVO5Y(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$6OT4SvUlJjWv3GG3n7NmzuqSn_k(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Pr85-6HhTBhjaOk50JenXUlo6J8(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
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
    .locals 2

    .line 86
    nop

    .line 87
    const-string v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    .line 92
    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    .line 102
    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    .line 225
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .locals 3
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;
    .param p2, "processSource"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 122
    sget v1, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 123
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 124
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 129
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    .line 133
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    .line 136
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 150
    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 157
    new-instance v0, Lcom/android/internal/os/BinderStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    .line 161
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    .line 168
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    .line 205
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 228
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    .line 230
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    .line 231
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 232
    return-void
.end method

.method private blacklist canCollect()Z
    .locals 3

    .line 531
    sget-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 532
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v0, :cond_0

    .line 533
    return v1

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_1

    .line 536
    return v1

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 539
    return v2

    .line 541
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    return v2

    .line 545
    :cond_3
    return v1
.end method

.method private static blacklist compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 6
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1777
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
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1788
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1789
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 1790
    move v1, v0

    goto :goto_0

    .line 1791
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 1789
    :goto_0
    return v1
.end method

.method private static blacklist compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .locals 4
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1783
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private blacklist createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 4
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 904
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 905
    .local v0, "uid":I
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 906
    .local v1, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 907
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 908
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 909
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 910
    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 911
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

    .line 912
    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 913
    return-object v1
.end method

.method private blacklist dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 994
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 995
    const/4 v5, 0x1

    .end local p4    # "verbose":Z
    .local v5, "verbose":Z
    goto :goto_0

    .line 994
    .end local v5    # "verbose":Z
    .restart local p4    # "verbose":Z
    :cond_0
    move/from16 v5, p4

    .line 997
    .end local p4    # "verbose":Z
    .restart local v5    # "verbose":Z
    :goto_0
    const-string v6, "Start time: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    iget-wide v6, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v8, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 999
    const-string v6, "On battery time (ms): "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1001
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

    .line 1002
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

    .line 1004
    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    const-string v7, "(top 90% by cpu time) "

    .line 1005
    .local v7, "datasetSizeDesc":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    .local v8, "sb":Ljava/lang/StringBuilder;
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

    .line 1013
    const/4 v9, 0x1

    if-eq v3, v4, :cond_4

    .line 1014
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_3

    .line 1015
    :cond_3
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v10

    :goto_3
    nop

    .local v10, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    goto :goto_5

    .line 1017
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_4
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_4

    .line 1018
    :cond_5
    invoke-virtual {v0, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v10

    :goto_4
    nop

    .line 1020
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :goto_5
    new-instance v11, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1021
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1022
    .local v12, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v14, :cond_6

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v15, "__DEBUG_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1024
    goto :goto_6

    .line 1026
    :cond_6
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1027
    const-string v13, "    "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3c

    .line 1028
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    .line 1029
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 1030
    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1031
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 1032
    invoke-virtual {v2, v15}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1033
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x23

    .line 1034
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1035
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1036
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v15, v10

    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v15, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v9, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1037
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v16, v5

    .end local v5    # "verbose":Z
    .local v16, "verbose":Z
    iget-wide v4, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1038
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1039
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1040
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v17, 0x5f

    if-eqz v10, :cond_7

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, v17

    :goto_7
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_8

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, v17

    :goto_8
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_9

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_9

    :cond_9
    move-wide/from16 v10, v17

    :goto_9
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1043
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1044
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    .end local v12    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object v11, v5

    move-object v10, v15

    move/from16 v5, v16

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_6

    .line 1047
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .end local v16    # "verbose":Z
    .restart local v5    # "verbose":Z
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_a
    move/from16 v16, v5

    move-object v15, v10

    .end local v5    # "verbose":Z
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v16    # "verbose":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1048
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v11, 0x0

    .line 1050
    .local v11, "totalCallsCount":J
    const-wide/16 v17, 0x0

    .line 1051
    .local v17, "totalRecordedCallsCount":J
    const-wide/16 v19, 0x0

    .line 1053
    .local v19, "totalCpuTime":J
    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    .line 1054
    invoke-direct {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v5

    .line 1055
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v19, v19, v13

    .line 1057
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v17, v17, v13

    .line 1058
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v13

    .line 1059
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    move-wide/from16 v13, v17

    move-wide/from16 v9, v19

    goto :goto_b

    .line 1060
    :cond_b
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1061
    .local v5, "uidEntriesSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    if-ge v13, v5, :cond_c

    .line 1062
    iget-object v14, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1063
    .local v14, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v19, v19, v9

    .line 1065
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v17, v17, v9

    .line 1066
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v9

    .line 1061
    .end local v14    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1068
    .end local v13    # "i":I
    :cond_c
    new-instance v9, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    .line 1069
    invoke-static {v9}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    .line 1068
    invoke-interface {v4, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-wide/from16 v13, v17

    move-wide/from16 v9, v19

    .line 1072
    .end local v5    # "uidEntriesSize":I
    .end local v17    # "totalRecordedCallsCount":J
    .end local v19    # "totalCpuTime":J
    .local v9, "totalCpuTime":J
    .local v13, "totalRecordedCallsCount":J
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v17, "sb":Ljava/lang/StringBuilder;
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

    .line 1074
    if-eqz v16, :cond_d

    move-object v5, v4

    move-object/from16 v18, v7

    goto :goto_c

    .line 1075
    :cond_d
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "datasetSizeDesc":Ljava/lang/String;
    .local v18, "datasetSizeDesc":Ljava/lang/String;
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v7, v8}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v5

    :goto_c
    nop

    .line 1076
    .local v5, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    move-object/from16 v19, v4

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v19, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1077
    .local v8, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1078
    .local v4, "uidStr":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    move-wide/from16 v21, v9

    .end local v9    # "totalCpuTime":J
    .local v21, "totalCpuTime":J
    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1079
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v2, v10

    move-wide/from16 v9, v21

    .end local v21    # "totalCpuTime":J
    .restart local v9    # "totalCpuTime":J
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    move-object/from16 v24, v5

    move-object/from16 v23, v6

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v24, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v5, v5

    mul-double v5, v5, v21

    move-wide/from16 v21, v13

    .end local v13    # "totalRecordedCallsCount":J
    .local v21, "totalRecordedCallsCount":J
    long-to-double v13, v9

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1080
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 1078
    const-string v5, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    iget-boolean v2, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v2, :cond_e

    .line 1082
    invoke-direct {v0, v1, v8}, Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V

    .line 1084
    .end local v4    # "uidStr":Ljava/lang/String;
    .end local v8    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_e
    move-object/from16 v2, p2

    move-object/from16 v4, v19

    move-wide/from16 v13, v21

    move-object/from16 v6, v23

    move-object/from16 v5, v24

    goto :goto_d

    .line 1085
    .end local v21    # "totalRecordedCallsCount":J
    .end local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v13    # "totalRecordedCallsCount":J
    :cond_f
    move-object/from16 v24, v5

    move-object/from16 v23, v6

    move-wide/from16 v21, v13

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v13    # "totalRecordedCallsCount":J
    .restart local v21    # "totalRecordedCallsCount":J
    .restart local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1086
    const/4 v2, -0x1

    if-ne v3, v2, :cond_10

    .line 1087
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1089
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    long-to-double v5, v9

    move-wide/from16 v7, v21

    .end local v21    # "totalRecordedCallsCount":J
    .local v7, "totalRecordedCallsCount":J
    long-to-double v13, v7

    div-double/2addr v5, v13

    .line 1090
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 1087
    const-string v5, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_e

    .line 1086
    .end local v7    # "totalRecordedCallsCount":J
    .restart local v21    # "totalRecordedCallsCount":J
    :cond_10
    move-wide/from16 v7, v21

    .line 1094
    .end local v21    # "totalRecordedCallsCount":J
    .restart local v7    # "totalRecordedCallsCount":J
    :goto_e
    const-string v2, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v2, "exceptionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1100
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 1102
    .local v6, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v14, v20

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v4, v14, v13

    const-string v4, "  %6d %s"

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_f

    .line 1105
    :cond_11
    const/4 v13, 0x1

    iget v4, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq v4, v13, :cond_12

    .line 1106
    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    const-string v4, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    :cond_12
    return-void
.end method

.method private blacklist getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 3
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 860
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 861
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 862
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 863
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 864
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 865
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 866
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 867
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 868
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 869
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 870
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 871
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 872
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 873
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 874
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 875
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 876
    return-object v0
.end method

.method private blacklist getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .locals 3
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 603
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 604
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 605
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 606
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 607
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 608
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 609
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 610
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 611
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 612
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 613
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 614
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 615
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 616
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 617
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 618
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 619
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    .line 620
    return-object v0
.end method

.method private blacklist getHashCode(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1128
    move v0, p2

    .line 1129
    .local v0, "result":I
    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    return v1
.end method

.method public static blacklist getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .locals 10
    .param p2, "percentile"    # D
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

    .line 1757
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "toDouble":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1758
    .local v0, "sortedList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1759
    const-wide/16 v1, 0x0

    .line 1760
    .local v1, "total":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1761
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 1762
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1763
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v4, 0x0

    .line 1765
    .local v4, "runningSum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1766
    .local v7, "item":Ljava/lang/Object;, "TT;"
    mul-double v8, p2, v1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_1

    .line 1767
    goto :goto_2

    .line 1769
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    invoke-interface {p1, v7}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 1771
    .end local v7    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 1772
    :cond_2
    :goto_2
    return-object v3
.end method

.method private blacklist getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .locals 2
    .param p1, "uid"    # I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    if-gez p1, :cond_0

    .line 460
    mul-int/lit8 p1, p1, -0x1

    .line 461
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 462
    if-nez v0, :cond_1

    .line 463
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 464
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 468
    if-nez v0, :cond_1

    .line 469
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 470
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z
    .locals 4
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1408
    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 1409
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

    .line 1408
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$dumpLocked$3(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .locals 2
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1069
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$4(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .locals 2
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1075
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$5(Ljava/util/List;Ljava/util/Map$Entry;)V
    .locals 2
    .param p0, "exceptionEntries"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 1099
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
    .param p0, "e1"    # Landroid/util/Pair;
    .param p1, "e2"    # Landroid/util/Pair;

    .line 1100
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
    .param p0, "resultCallStats"    # Ljava/util/ArrayList;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 803
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getHeaviestApplicationUid$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)J
    .locals 2
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 655
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    return-wide v0
.end method

.method static synthetic blacklist lambda$printCallStatsByPackage$2(Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;)J
    .locals 2
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 979
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    return-wide v0
.end method

.method private blacklist noteBinderThreadNativeIds()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_0

    .line 522
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    .line 526
    return-void
.end method

.method private blacklist noteCallsStatsDelayed()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :cond_0
    return-void
.end method

.method private blacklist noteNativeThreadId()V
    .locals 6

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    .line 499
    .local v0, "tid":I
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 500
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 501
    return-void

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 507
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 508
    .local v3, "nativeTids":Landroid/util/IntArray;
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    move v1, v4

    .line 509
    if-gez v1, :cond_1

    .line 510
    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 511
    .local v4, "copyOnWriteArray":Landroid/util/IntArray;
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 512
    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/IntArray;->add(II)V

    .line 513
    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 515
    .end local v3    # "nativeTids":Landroid/util/IntArray;
    .end local v4    # "copyOnWriteArray":Landroid/util/IntArray;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 518
    return-void

    .line 515
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

    .line 325
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    .line 326
    .local v0, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private blacklist prepareExportedCallStats(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    .line 1415
    .local p1, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    if-nez p1, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object p1

    .line 1419
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1420
    .local v1, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1424
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1425
    monitor-exit v2

    goto/16 :goto_2

    .line 1427
    :cond_2
    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    mul-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v3

    .line 1428
    .local v3, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    invoke-direct {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v4

    move-object v11, v4

    .line 1430
    .local v11, "tmpUidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1431
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 1432
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1433
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    iget-wide v6, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 1435
    iget v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iget-object v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget-boolean v8, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget-wide v9, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v4, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    int-to-long v12, v4

    cmp-long v4, v9, v12

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    iget-object v10, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v4

    .line 1441
    .local v4, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 1442
    iget-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 1443
    iget-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 1444
    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v7, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 1446
    iget-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 1447
    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v7, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 1449
    iget-boolean v5, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v5, :cond_4

    .line 1450
    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v7, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 1452
    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v7, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 1454
    iget-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 1456
    :cond_4
    iget v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget-boolean v9, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget-object v10, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v5

    .line 1459
    .local v5, "tmpCallStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iget-wide v8, v5, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 1460
    .end local v3    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v4    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "tmpCallStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v11    # "tmpUidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    monitor-exit v2

    .line 1461
    .end local v1    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    goto/16 :goto_0

    .line 1460
    .restart local v1    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1462
    .end local v1    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "entry"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 960
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 961
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
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

    .line 962
    .local v2, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-object v3, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 963
    .local v3, "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    if-nez v3, :cond_0

    .line 964
    new-instance v4, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    invoke-direct {v4, p0}, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v3, v4

    .line 965
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    .line 966
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 967
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 968
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 969
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 971
    :cond_0
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 972
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 973
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 975
    .end local v2    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v3    # "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    :goto_1
    goto :goto_0

    .line 977
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 978
    .local v1, "statsValues":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;-><init>()V

    .line 979
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    .line 978
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 981
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 982
    .local v3, "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    long-to-double v6, v6

    mul-double/2addr v6, v4

    iget-wide v4, p2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v4, v4

    div-double/2addr v6, v4

    .line 983
    .local v6, "ratio":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v6, v4

    if-ltz v4, :cond_2

    .line 984
    const-string v4, "          "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 986
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x2

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 987
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    iget-object v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    aput-object v8, v4, v5

    .line 985
    const-string v5, " (%3.0f%%/%8d/%8d/%s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    .end local v3    # "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    .end local v6    # "ratio":D
    :cond_2
    goto :goto_2

    .line 990
    :cond_3
    return-void
.end method

.method private blacklist processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .locals 30
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 345
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    .line 350
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    return-void

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-boolean v4, v2, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v4, :cond_2

    .line 357
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    .local v4, "recordCall":Z
    goto :goto_0

    .line 358
    .end local v4    # "recordCall":Z
    :cond_2
    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v4, :cond_3

    .line 359
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0

    .line 360
    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    move v5, v4

    move-object v4, v0

    .restart local v4    # "recordCall":Z
    goto :goto_0

    .line 362
    .end local v4    # "recordCall":Z
    :cond_3
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .line 367
    .end local v0    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v4, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v5, "recordCall":Z
    :goto_0
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v6, v8

    .line 369
    .local v6, "duration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v8, v10

    .local v8, "latencyDuration":J
    goto :goto_1

    .line 371
    .end local v6    # "duration":J
    .end local v8    # "latencyDuration":J
    :cond_4
    const-wide/16 v6, 0x0

    .line 372
    .restart local v6    # "duration":J
    const-wide/16 v8, 0x0

    .line 374
    .restart local v8    # "latencyDuration":J
    :goto_1
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    move v15, v0

    goto :goto_2

    .line 376
    :cond_5
    const/4 v15, 0x0

    :goto_2
    nop

    .line 377
    .local v15, "screenInteractive":Z
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v0, :cond_6

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v0

    goto :goto_3

    .line 379
    :cond_6
    const/4 v0, -0x1

    :goto_3
    move v14, v0

    .line 380
    .local v14, "callingUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingPid()I

    move-result v13

    .line 381
    .local v13, "callingPid":I
    const/4 v0, 0x0

    .line 382
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v11, :cond_8

    .line 383
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

    .line 382
    :cond_8
    move-object/from16 v22, v0

    .line 386
    .end local v0    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    :goto_5
    iget-object v12, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 388
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_9

    .line 389
    :try_start_1
    monitor-exit v12

    return-void

    .line 441
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

    .line 392
    :cond_9
    if-nez v4, :cond_a

    .line 393
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 396
    :cond_a
    :try_start_2
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    const-wide/16 v23, 0x1

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 397
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 398
    if-eqz v5, :cond_f

    .line 399
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v10, v6

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 400
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 402
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

    .end local v13    # "callingPid":I
    .local v26, "callingPid":I
    move-object v13, v10

    move v10, v14

    .end local v14    # "callingUid":I
    .local v10, "callingUid":I
    move/from16 v14, v17

    move-object/from16 v17, v22

    :try_start_3
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v11

    .line 407
    .local v11, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
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

    .line 408
    .local v0, "isNewCallStat":Z
    :goto_6
    if-eqz v0, :cond_c

    .line 409
    :try_start_4
    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v12, v12, v23

    iput-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 441
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_1
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    goto/16 :goto_b

    .line 412
    .restart local v0    # "isNewCallStat":Z
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_c
    :goto_7
    :try_start_5
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 413
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 414
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 415
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v12, v6

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 416
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 417
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v12, v8

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 418
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 419
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 420
    iget-boolean v12, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v12, :cond_e

    .line 421
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v14, v2, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    move-wide/from16 v23, v16

    :goto_8
    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 422
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .local v27, "recordCall":Z
    .local v28, "duration":J
    int-to-long v5, v14

    .line 423
    :try_start_6
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 424
    iget-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v7, p3

    int-to-long v12, v7

    .line 425
    :try_start_7
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    goto :goto_9

    .line 441
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_2
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_b

    .line 420
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v0    # "isNewCallStat":Z
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_e
    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .line 427
    .end local v0    # "isNewCallStat":Z
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_9
    goto :goto_a

    .line 441
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_3
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    goto :goto_b

    .line 430
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :cond_f
    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
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

    .line 433
    .local v0, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v0, :cond_10

    .line 434
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 435
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 438
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_10
    :goto_a
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_11

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 439
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_11
    monitor-exit v25

    .line 442
    return-void

    .line 441
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :catchall_4
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_b
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_b
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

    .line 882
    .local p1, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    const/4 v0, 0x0

    .line 883
    .local v0, "previous":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v1, 0x0

    .line 884
    .local v1, "previousMethodName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 885
    new-instance v2, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v2}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 886
    .local v2, "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 887
    .local v4, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 888
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

    .line 889
    .local v7, "isClassDifferent":Z
    :goto_2
    if-eqz v0, :cond_2

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v8, v9, :cond_3

    :cond_2
    move v5, v6

    .line 892
    .local v5, "isCodeDifferent":Z
    :cond_3
    if-nez v7, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 895
    :cond_4
    move-object v6, v1

    .local v6, "methodName":Ljava/lang/String;
    goto :goto_4

    .line 893
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    .line 897
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_4
    move-object v1, v6

    .line 898
    iput-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 899
    move-object v0, v4

    .line 900
    .end local v4    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "isCodeDifferent":Z
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "isClassDifferent":Z
    goto :goto_0

    .line 901
    :cond_6
    return-void
.end method

.method private blacklist shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .locals 4
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p2, "applySharding"    # Z

    .line 445
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 446
    return v0

    .line 449
    :cond_0
    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 450
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr v2, v3

    .line 451
    .end local v1    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr v1, v3

    .line 452
    .end local v2    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_0

    :cond_1
    const/16 v3, 0x4d5

    :goto_0
    add-int/2addr v2, v3

    .line 454
    .end local v1    # "hash":I
    .restart local v2    # "hash":I
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
    .param p0, "context"    # Landroid/content/Context;

    .line 1796
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    .line 1802
    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 332
    if-nez p1, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    return-void
.end method

.method public blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .locals 4
    .param p1, "binder"    # Landroid/os/Binder;
    .param p2, "code"    # I
    .param p3, "workSourceUid"    # I

    .line 298
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    .line 302
    .local v0, "collectCpu":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v1

    .line 307
    .local v1, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    .line 308
    iput p2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 310
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 311
    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    .line 314
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v2, :cond_2

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_0

    .line 317
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v2, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 321
    :cond_3
    :goto_0
    return-object v1
.end method

.method public blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 478
    if-nez p1, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 483
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1

    .line 486
    const-string v3, "overflow"

    move-object v1, v3

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 489
    .local v3, "count":Ljava/lang/Integer;
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

    .line 490
    nop

    .end local v3    # "count":Ljava/lang/Integer;
    monitor-exit v2

    .line 494
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_1

    .line 490
    .restart local v1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .end local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local p2    # "exception":Ljava/lang/Exception;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    .end local v1    # "className":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .restart local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local p2    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BinderCallsStats"

    const-string v2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 932
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 934
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 938
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

    .line 939
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 942
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 944
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 945
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderStats;->dump(Ljava/io/PrintWriter;)V

    .line 946
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
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

    .line 949
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 951
    :cond_1
    :goto_0
    return-void

    .line 944
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
    .param p1, "enable"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 244
    return-void
.end method

.method protected blacklist getCallingPid()I
    .locals 1

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method protected blacklist getCallingUid()I
    .locals 1

    .line 1116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist getCollectLatencyData()Z
    .locals 1

    .line 1328
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .locals 4

    .line 1192
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

    .line 1747
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

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 831
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(IZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "workSourceUid"    # I
    .param p2, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    mul-int/lit8 v2, p1, -0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 845
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
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

    .line 846
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    .line 847
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v5, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 848
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_0
    goto :goto_0

    .line 851
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 856
    return-object v0

    .line 851
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
    .param p1, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 717
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 767
    :cond_0
    const/4 v0, 0x5

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 769
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v2, v0

    .line 770
    .local v2, "tmpExportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 771
    .local v3, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 772
    .local v4, "resultsPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 773
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 774
    .local v0, "uidEntriesSize":I
    const/4 v6, 0x0

    .local v6, "entryIdx":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 775
    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 776
    .local v7, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
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

    .line 777
    .local v9, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v10, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v10, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .local v10, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move/from16 v11, p1

    :try_start_1
    invoke-direct {v1, v10, v11}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 779
    iget v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    .line 780
    iget-boolean v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    .line 781
    iget-object v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 783
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 784
    .local v12, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    if-nez v12, :cond_1

    .line 785
    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    move-object v12, v13

    .line 786
    new-instance v13, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    iget v14, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v15, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .local v16, "uidEntriesSize":I
    iget-object v0, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-direct {v13, v1, v14, v15, v0}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    move-object v0, v13

    .line 788
    .local v0, "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    move-object v0, v7

    move-object v15, v8

    .end local v0    # "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    goto :goto_2

    .line 790
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_1
    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .restart local v16    # "uidEntriesSize":I
    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-object v0, v7

    move-object v15, v8

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v7, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v13, v7

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 791
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 792
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 793
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 794
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 795
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 796
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 797
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 798
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_2

    .line 778
    .end local v12    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_2
    move/from16 v16, v0

    move-object v0, v7

    move-object v15, v8

    .line 801
    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v9    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v10    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    :goto_2
    move-object v7, v0

    move-object v8, v15

    move/from16 v0, v16

    goto/16 :goto_1

    .line 802
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_3
    move/from16 v11, p1

    move/from16 v16, v0

    move-object v0, v7

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 807
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 774
    .end local v0    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto/16 :goto_0

    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_4
    move/from16 v11, p1

    move/from16 v16, v0

    .line 809
    .end local v0    # "uidEntriesSize":I
    .end local v6    # "entryIdx":I
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 812
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 815
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_5

    .line 816
    const-string/jumbo v0, "start_time_millis"

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    const-string v0, "battery_time_millis"

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 819
    invoke-virtual {v5}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    .line 818
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    const-string v0, "sampling_interval"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    const-string/jumbo v0, "sharding_modulo"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_5
    return-object v3

    .line 809
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

    .line 553
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 560
    .local v2, "uidEntriesSize":I
    const/4 v3, 0x0

    .local v3, "entryIdx":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 561
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 562
    .local v4, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
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

    .line 563
    .local v6, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    nop

    .end local v6    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_1

    .line 560
    .end local v4    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "uidEntriesSize":I
    .end local v3    # "entryIdx":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 572
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_3

    .line 573
    const-string/jumbo v1, "start_time_millis"

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v1, "battery_time_millis"

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 576
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v1, "sampling_interval"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_3
    return-object v0

    .line 566
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
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 590
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
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

    .line 591
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    nop

    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_0

    .line 593
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 598
    return-object v0

    .line 593
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

    .line 918
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 920
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .locals 14
    .param p1, "threshold"    # I

    .line 640
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 641
    return-object v1

    .line 644
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v2, 0x0

    .line 647
    .local v2, "totalCpuTime":J
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 648
    .local v4, "uidEntriesSize":I
    if-lez v4, :cond_5

    .line 649
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 650
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 651
    .local v6, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v7

    .line 649
    .end local v6    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 654
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;-><init>()V

    .line 655
    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    .line 654
    invoke-interface {v0, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 657
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    move v5, v4

    .line 658
    .local v5, "numOfTopProcesses":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const-string v7, "BinderCallsStats"

    if-ge v6, v5, :cond_3

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Top["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] UID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 660
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 661
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), cpuTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 662
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 659
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 664
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 665
    .local v8, "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    const/high16 v9, 0x42c80000    # 100.0f

    iget-wide v10, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-float v10, v10

    mul-float/2addr v10, v9

    long-to-float v9, v2

    div-float/2addr v10, v9

    .line 666
    .local v10, "ratio":F
    float-to-int v9, v10

    if-lt v9, p1, :cond_5

    .line 667
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Heavy Binder Caller is detected. It occupies "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 668
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "%.2f"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "% in the binder_calls_stats"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 667
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v9, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 675
    iget-object v9, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 676
    .local v9, "size":I
    iget-object v11, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 677
    .local v11, "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-object v12, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget-object v12, v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 678
    .local v12, "topPackageName":Ljava/lang/String;
    iget-object v13, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget v6, v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 680
    .local v6, "topUid":I
    iget v13, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    if-ne v13, v6, :cond_4

    .line 682
    const-string v1, "Match TOP uid with stats info"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {v12, v6, v10}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    return-object v1

    .line 686
    .end local v6    # "topUid":I
    .end local v9    # "size":I
    .end local v11    # "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    .end local v12    # "topPackageName":Ljava/lang/String;
    :cond_4
    iget v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v1, v6, v10}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    return-object v1

    .line 689
    .end local v5    # "numOfTopProcesses":I
    .end local v8    # "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v10    # "ratio":F
    :cond_5
    return-object v1
.end method

.method public blacklist getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .locals 1

    .line 1751
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected blacklist getNativeTid()I
    .locals 1

    .line 1124
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public blacklist getNativeTids()[I
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getPackageName(II)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v1

    .line 1136
    .local v1, "hashCode":I
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1137
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 1140
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1142
    if-eqz v0, :cond_1

    const-string v2, "<pre-initialized>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1143
    return-object v0

    .line 1146
    :cond_1
    const/4 v2, 0x0

    .line 1148
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/%d/cmdline"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1151
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1152
    if-eqz v0, :cond_2

    .line 1153
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1155
    :cond_2
    const-string/jumbo v3, "unknown"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 1162
    :goto_0
    nop

    .line 1163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1167
    :cond_3
    :goto_1
    goto :goto_2

    .line 1165
    :catch_0
    move-exception v3

    .line 1166
    .local v3, "ce":Ljava/io/IOException;
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred during closing file..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    .end local v3    # "ce":Ljava/io/IOException;
    goto :goto_2

    .line 1161
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1157
    :catch_1
    move-exception v3

    .line 1158
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred ..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    const-string/jumbo v4, "unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v4

    .line 1162
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 1163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1170
    :goto_2
    const-string v3, "dumpsys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1171
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1172
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1173
    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 1178
    :cond_4
    const-string v3, "BinderCallsStats"

    const-string v4, "This is dumpsys command... We will not add it into HashMap"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :goto_3
    return-object v0

    .line 1162
    :goto_4
    if-eqz v2, :cond_5

    .line 1163
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 1165
    :catch_2
    move-exception v4

    .line 1166
    .local v4, "ce":Ljava/io/IOException;
    const-string v5, "BinderCallsStats"

    const-string v6, "IO errors occurred during closing file..."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1167
    .end local v4    # "ce":Ljava/io/IOException;
    :cond_5
    :goto_5
    nop

    .line 1168
    :goto_6
    throw v3

    .line 1140
    .end local v2    # "br":Ljava/io/BufferedReader;
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

    .line 1112
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

    .line 1742
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist init()V
    .locals 8

    .line 247
    const-string v0, "Failed to close file, /data/log/binder_calls_stats"

    const-string v1, "BinderCallsStats"

    const/4 v2, 0x0

    .line 248
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 250
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 256
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-eqz v3, :cond_0

    .line 268
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 260
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderStats;->read(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    nop

    .line 268
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    :goto_1
    goto :goto_2

    .line 269
    :catch_1
    move-exception v4

    .line 270
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 266
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 263
    :catch_2
    move-exception v4

    .line 264
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Exception occurred during load from file"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    .line 268
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 261
    :catch_3
    move-exception v4

    .line 262
    .local v4, "fne":Ljava/io/FileNotFoundException;
    :try_start_6
    const-string v5, "The file does NOT exist... /data/log/binder_calls_stats"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    nop

    .end local v4    # "fne":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_2

    .line 268
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 274
    :cond_2
    :goto_2
    return-void

    .line 266
    :goto_3
    if-eqz v3, :cond_3

    .line 268
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 271
    goto :goto_4

    .line 269
    :catch_4
    move-exception v5

    .line 270
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    throw v4
.end method

.method public blacklist isNeededResetData()Z
    .locals 6

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 694
    .local v0, "currentTime":J
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v4, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 697
    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 698
    const/4 v2, 0x1

    return v2

    .line 700
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist recordAllCallsForWorkSourceUid(I)V
    .locals 3
    .param p1, "workSourceUid"    # I

    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 1257
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

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v1

    .line 1259
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1260
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1262
    mul-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 1263
    .local v2, "tmpUidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1264
    return-void
.end method

.method public blacklist reportProcessDied(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 926
    monitor-exit v0

    .line 927
    return-void

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs blacklist reset([Z)V
    .locals 3
    .param p1, "allEntriesOnly"    # [Z

    .line 1357
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1359
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 1360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 1361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    .line 1365
    :cond_0
    return-void

    .line 1361
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist resetForSEC()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1344
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 1346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 1347
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_0

    .line 1348
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 1350
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1353
    monitor-exit v0

    .line 1354
    return-void

    .line 1353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setAddDebugEntries(Z)V
    .locals 0
    .param p1, "addDebugEntries"    # Z

    .line 1267
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 1268
    return-void
.end method

.method public blacklist setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .locals 0
    .param p1, "callStatsObserver"    # Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 282
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 283
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    .line 285
    return-void
.end method

.method public blacklist setCollectLatencyData(Z)V
    .locals 0
    .param p1, "collectLatencyData"    # Z

    .line 1322
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 1323
    return-void
.end method

.method public blacklist setCpuUsageThreshold(I)Z
    .locals 2
    .param p1, "cpuUsageThreshold"    # I

    .line 1332
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 1338
    const/4 v0, 0x1

    return v0

    .line 1333
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

    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDetailedTracking(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1203
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_0

    .line 1205
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 1206
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1208
    :cond_0
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .locals 1
    .param p1, "deviceState"    # Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 235
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 240
    return-void
.end method

.method public blacklist setIgnoreBatteryStatus(Z)V
    .locals 2
    .param p1, "ignored"    # Z

    .line 1239
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_0

    .line 1241
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 1242
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1244
    :cond_0
    monitor-exit v0

    .line 1245
    return-void

    .line 1244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setMaxBinderCallStats(I)V
    .locals 3
    .param p1, "maxKeys"    # I

    .line 1274
    if-gtz p1, :cond_0

    .line 1275
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

    .line 1277
    return-void

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_1

    .line 1282
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 1283
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1285
    :cond_1
    monitor-exit v0

    .line 1286
    return-void

    .line 1285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSamplingInterval(I)V
    .locals 3
    .param p1, "samplingInterval"    # I

    .line 1289
    if-gtz p1, :cond_0

    .line 1290
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

    .line 1292
    return-void

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_1

    .line 1297
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 1298
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1300
    :cond_1
    monitor-exit v0

    .line 1301
    return-void

    .line 1300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setShardingModulo(I)V
    .locals 3
    .param p1, "shardingModulo"    # I

    .line 1305
    if-gtz p1, :cond_0

    .line 1306
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

    .line 1308
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1312
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_1

    .line 1313
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 1314
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 1315
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1317
    :cond_1
    monitor-exit v0

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTrackDirectCallerUid(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1227
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_0

    .line 1229
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 1230
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1232
    :cond_0
    monitor-exit v0

    .line 1233
    return-void

    .line 1232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTrackScreenInteractive(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1215
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_0

    .line 1217
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 1218
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1220
    :cond_0
    monitor-exit v0

    .line 1221
    return-void

    .line 1220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist shouldRecordDetailedData()Z
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist store(II)V
    .locals 8
    .param p1, "N"    # I
    .param p2, "cpuUsage"    # I

    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object v0

    .line 1466
    .local v0, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->prepareExportedCallStats(Ljava/util/List;)V

    .line 1468
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    if-lt p2, v1, :cond_3

    .line 1469
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1470
    const/4 v1, 0x0

    .line 1471
    .local v1, "count":I
    new-instance v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    invoke-direct {v2}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;-><init>()V

    .line 1472
    .local v2, "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-wide v3, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    .line 1473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    .line 1474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1475
    .local v4, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    new-instance v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    invoke-direct {v5}, Lcom/android/internal/os/BinderStats$BinderStatsUnit;-><init>()V

    .line 1477
    .local v5, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iput v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 1478
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 1479
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    .line 1480
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    .line 1481
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    .line 1482
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    .line 1483
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    .line 1484
    invoke-virtual {v2, v5}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V

    .line 1486
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 1487
    .end local v4    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    :cond_1
    goto :goto_0

    .line 1489
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 1490
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1491
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    const-string v4, "BinderCallsStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store() invoked. mEntries size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1496
    .end local v1    # "count":I
    .end local v2    # "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist writeToFile()V
    .locals 6

    .line 1368
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1370
    const-string v1, "BinderCallsStats"

    const-string v2, "Nothing to write to file. Just return"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    monitor-exit v0

    return-void

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 1374
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1378
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BinderStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1380
    const-string v2, "BinderCallsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The state of stats data looks abnormal. parcel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1381
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

    .line 1380
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_1
    const/4 v2, 0x0

    .line 1385
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1387
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1388
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1389
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1390
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1392
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v4

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1394
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    nop

    .line 1401
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1403
    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    .line 1404
    goto :goto_1

    .line 1398
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1395
    :catch_1
    move-exception v1

    .line 1396
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "BinderCallsStats"

    const-string v5, "Exception occurred during writing file"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1398
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    if-eqz v3, :cond_3

    .line 1401
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1405
    :goto_1
    return-void

    .line 1398
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    if-eqz v3, :cond_4

    .line 1401
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1403
    :catch_2
    move-exception v4

    :cond_4
    :goto_3
    nop

    .line 1404
    throw v1

    .line 1375
    .end local v0    # "out":Landroid/os/Parcel;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
