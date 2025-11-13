.class public Landroid/media/tv/tuner/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/Filter$MonitorEventMask;,
        Landroid/media/tv/tuner/filter/Filter$ScramblingStatus;,
        Landroid/media/tv/tuner/filter/Filter$Status;,
        Landroid/media/tv/tuner/filter/Filter$Subtype;,
        Landroid/media/tv/tuner/filter/Filter$Type;
    }
.end annotation


# static fields
.field public static final whitelist MONITOR_EVENT_IP_CID_CHANGE:I = 0x2

.field public static final whitelist MONITOR_EVENT_SCRAMBLING_STATUS:I = 0x1

.field public static final whitelist SCRAMBLING_STATUS_NOT_SCRAMBLED:I = 0x2

.field public static final whitelist SCRAMBLING_STATUS_SCRAMBLED:I = 0x4

.field public static final whitelist SCRAMBLING_STATUS_UNKNOWN:I = 0x1

.field public static final whitelist STATUS_DATA_READY:I = 0x1

.field public static final whitelist STATUS_HIGH_WATER:I = 0x4

.field public static final whitelist STATUS_LOW_WATER:I = 0x2

.field public static final whitelist STATUS_NO_DATA:I = 0x10

.field public static final whitelist STATUS_OVERFLOW:I = 0x8

.field public static final whitelist SUBTYPE_AUDIO:I = 0x3

.field public static final whitelist SUBTYPE_DOWNLOAD:I = 0x5

.field public static final whitelist SUBTYPE_IP:I = 0xd

.field public static final whitelist SUBTYPE_IP_PAYLOAD:I = 0xc

.field public static final whitelist SUBTYPE_MMTP:I = 0xa

.field public static final whitelist SUBTYPE_NTP:I = 0xb

.field public static final whitelist SUBTYPE_PAYLOAD_THROUGH:I = 0xe

.field public static final whitelist SUBTYPE_PCR:I = 0x8

.field public static final whitelist SUBTYPE_PES:I = 0x2

.field public static final whitelist SUBTYPE_PTP:I = 0x10

.field public static final whitelist SUBTYPE_RECORD:I = 0x6

.field public static final whitelist SUBTYPE_SECTION:I = 0x1

.field public static final whitelist SUBTYPE_TEMI:I = 0x9

.field public static final whitelist SUBTYPE_TLV:I = 0xf

.field public static final whitelist SUBTYPE_TS:I = 0x7

.field public static final whitelist SUBTYPE_UNDEFINED:I = 0x0

.field public static final whitelist SUBTYPE_VIDEO:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "Filter"

.field public static final whitelist TYPE_ALP:I = 0x10

.field public static final whitelist TYPE_IP:I = 0x4

.field public static final whitelist TYPE_MMTP:I = 0x2

.field public static final whitelist TYPE_TLV:I = 0x8

.field public static final whitelist TYPE_TS:I = 0x1

.field public static final whitelist TYPE_UNDEFINED:I


# instance fields
.field private blacklist mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:J

.field private blacklist mIsClosed:Z

.field private blacklist mIsShared:Z

.field private blacklist mIsStarted:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainType:I

.field private blacklist mNativeContext:J

.field private blacklist mSource:Landroid/media/tv/tuner/filter/Filter;

.field private blacklist mStarted:Z

.field private blacklist mSubtype:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EfpO-kCK9C-u_O5W61AR8QYbqZc(Landroid/media/tv/tuner/filter/Filter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gmdK3MmKJdYvYkXia5kQYUv6YrA(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    iput-wide p1, p0, Landroid/media/tv/tuner/filter/Filter;->mId:J

    return-void
.end method

.method private synthetic blacklist lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onFilterStatus$0(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native blacklist nativeAcquireSharedFilterToken()Ljava/lang/String;
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I
.end method

.method private native blacklist nativeConfigureMonitorEvent(I)I
.end method

.method private native blacklist nativeFlushFilter()I
.end method

.method private native blacklist nativeFreeSharedFilterToken(Ljava/lang/String;)V
.end method

.method private native blacklist nativeGetId()I
.end method

.method private native blacklist nativeGetId64Bit()J
.end method

.method private native blacklist nativeRead([BJJ)I
.end method

.method private native blacklist nativeSetDataSizeDelayHint(I)I
.end method

.method private native blacklist nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeSetTimeDelayHint(I)I
.end method

.method private native blacklist nativeStartFilter()I
.end method

.method private native blacklist nativeStopFilter()I
.end method

.method private blacklist onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onFilterStatus(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/Filter;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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


# virtual methods
.method public whitelist acquireSharedFilterToken()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeAcquireSharedFilterToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    :cond_1
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire shared filter in a wrong state, started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "shared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeClose()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "Failed to close filter."

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist configure(Landroid/media/tv/tuner/filter/FilterConfiguration;)I
    .locals 6

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getSettings()Landroid/media/tv/tuner/filter/Settings;

    move-result-object v1

    if-nez v1, :cond_1

    iget v2, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/tv/tuner/filter/Settings;->getType()I

    move-result v2

    :goto_0
    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    if-ne v3, v2, :cond_3

    instance-of v3, v1, Landroid/media/tv/tuner/filter/RecordSettings;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/media/tv/tuner/filter/RecordSettings;

    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/RecordSettings;->getScIndexType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/high16 v3, 0x30000

    invoke-static {v3}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Filter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuner version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support VVC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I

    move-result v3

    monitor-exit v0

    return v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid filter config. filter main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filter subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". config main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist delayCallbackForDurationMillis(J)I
    .locals 2

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    long-to-int v1, p1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetTimeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist delayCallbackUntilBytesAccumulated(I)I
    .locals 2

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSizeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist flush()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeFlushFilter()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist freeSharedFilterToken(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeFreeSharedFilterToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getCallback()Landroid/media/tv/tuner/filter/FilterCallback;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getId()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getIdLong()J
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId64Bit()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist read([BJJ)I
    .locals 9

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/Filter;->nativeRead([BJJ)I

    move-result p4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p4

    :catchall_0
    move-exception v1

    move-wide p4, v7

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    iput-object p2, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setDataSource(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    :cond_1
    monitor-exit v0

    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data source is existing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setMonitorEventMask(I)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    const-string/jumbo v1, "setMonitorEventMask"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureMonitorEvent(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setType(II)V
    .locals 1

    iput p1, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    return-void
.end method

.method public whitelist start()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStartFilter()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist stop()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStopFilter()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
