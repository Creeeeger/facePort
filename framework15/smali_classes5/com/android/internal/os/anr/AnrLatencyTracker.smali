.class public Lcom/android/internal/os/anr/AnrLatencyTracker;
.super Ljava/lang/Object;
.source "AnrLatencyTracker.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/anr/AnrLatencyTracker$EarlyDumpStatus;
    }
.end annotation


# static fields
.field private static final blacklist sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAMSLockLastTryAcquireStart:J

.field private blacklist mAMSLockTotalContention:J

.field private blacklist mAnrProcessingStartedUptime:J

.field private blacklist mAnrQueueSize:I

.field private blacklist mAnrRecordLastTryAcquireStart:J

.field private blacklist mAnrRecordLockTotalContention:J

.field private final blacklist mAnrRecordPlacedOnQueueCookie:I

.field private blacklist mAnrRecordPlacedOnQueueUptime:J

.field private blacklist mAnrTriggerUptime:J

.field private blacklist mAnrType:I

.field private blacklist mAppNotRespondingStartUptime:J

.field private blacklist mCopyingFirstPidDuration:J

.field private blacklist mCopyingFirstPidStartUptime:J

.field private blacklist mCopyingFirstPidSucceeded:Z

.field private blacklist mCriticalEventLogTotalLatency:J

.field private blacklist mCriticalEventLoglastCallUptime:J

.field private blacklist mCurrentPsiStateLastCallUptime:J

.field private blacklist mCurrentPsiStateTotalLatency:J

.field private blacklist mDumpStackTracesStartUptime:J

.field private final blacklist mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mEarlyDumpExecutorPidCount:J

.field private blacklist mEarlyDumpRequestSubmissionUptime:J

.field private volatile blacklist mEarlyDumpStatus:I

.field private blacklist mEndUptime:J

.field private blacklist mExtraPidsDumpingDuration:J

.field private blacklist mExtraPidsDumpingStartUptime:J

.field private blacklist mFirstPidsDumpingDuration:J

.field private blacklist mFirstPidsDumpingStartUptime:J

.field private blacklist mGlobalLockLastTryAcquireStart:J

.field private blacklist mGlobalLockTotalContention:J

.field private blacklist mIsPushed:Z

.field private blacklist mIsSkipped:Z

.field private blacklist mNativePidsDumpingDuration:J

.field private blacklist mNativePidsDumpingStartUptime:J

.field private blacklist mNotifyAppUnresponsiveDuration:J

.field private blacklist mNotifyAppUnresponsiveStartUptime:J

.field private blacklist mNotifyWindowUnresponsiveDuration:J

.field private blacklist mNotifyWindowUnresponsiveStartUptime:J

.field private blacklist mPidLockLastTryAcquireStart:J

.field private blacklist mPidLockTotalContention:J

.field private blacklist mPreDumpIfLockTooSlowDuration:J

.field private blacklist mPreDumpIfLockTooSlowStartUptime:J

.field private blacklist mProcLockLastTryAcquireStart:J

.field private blacklist mProcLockTotalContention:J

.field private blacklist mProcessCpuTrackerMethodsLastCallUptime:J

.field private blacklist mProcessCpuTrackerMethodsTotalLatency:J

.field private volatile blacklist mTempFileDumpingDuration:J

.field private volatile blacklist mTempFileDumpingStartUptime:J

.field private blacklist mUpdateCpuStatsNowLastCallUptime:J

.field private blacklist mUpdateCpuStatsNowTotalLatency:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    iput-boolean v3, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    sget-object v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->sNextAnrRecordPlacedOnQueueCookieGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    iput-wide p2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    invoke-static {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->timeoutKindToAnrType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrType:I

    return-void
.end method

.method private blacklist anrSkipped(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnrSkipped@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    return-void
.end method

.method private static blacklist timeoutKindToAnrType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x7

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist anrProcessingEnded()V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->close()V

    return-void
.end method

.method public blacklist anrProcessingStarted()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    const-string v0, "anrRecordPlacedOnQueue"

    iget v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v0, "anrProcessing"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist anrRecordPlacingOnQueueWithSize(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    const-string v0, "anrRecordPlacedOnQueue"

    iget v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueCookie:I

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput p1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    add-int/lit8 v0, p1, 0x1

    const-string v1, "anrRecordsQueueSize"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method public blacklist anrRecordsQueueSizeWhenPopped(I)V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "anrRecordsQueueSize"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method public blacklist anrSkippedDumpStackTraces()V
    .locals 1

    const-string v0, "dumpStackTraces"

    invoke-direct {p0, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkipped(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist anrSkippedProcessErrorStateRecordAppNotResponding()V
    .locals 1

    const-string v0, "appNotResponding"

    invoke-direct {p0, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkipped(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist appNotRespondingEnded()V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist appNotRespondingStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "AnrHelper#appNotResponding()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsSkipped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEndUptime:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->pushAtom()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mIsPushed:Z

    :cond_0
    return-void
.end method

.method public blacklist copyingFirstPidEnded(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    iput-boolean p1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist copyingFirstPidStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "copyingFirstPid"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist criticalEventLogEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLoglastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist criticalEventLogStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLoglastCallUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "criticalEventLog"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist currentPsiStateCalled()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateLastCallUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "currentPsiState()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist currentPsiStateReturned()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationsV5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidStartUptime:J

    :goto_0
    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCopyingFirstPidSucceeded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dumpStackTracesEnded()V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpStackTracesStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTraces()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpStackTracesTempFileCreationFailed()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFileCreationFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpStackTracesTempFileEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingDuration:J

    iget v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    :cond_0
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpStackTracesTempFileStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mTempFileDumpingStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFile"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpStackTracesTempFileTimedOut()V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpStatus:I

    const-wide/16 v0, 0x40

    const-string v2, "dumpStackTracesTempFileTimedOut"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpingExtraPidsEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpingExtraPidsStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "dumpingExtraPids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpingFirstPidsEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpingFirstPidsStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "dumpingFirstPids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpingNativePidsEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpingNativePidsStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingStartUptime:J

    const-wide/16 v0, 0x40

    const-string v2, "dumpingNativePids"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist dumpingPidEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist dumpingPidStarted(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpingPid#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist earlyDumpRequestSubmittedWithSize(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpRequestSubmissionUptime:J

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEarlyDumpExecutorPidCount:J

    return-void
.end method

.method public blacklist getUptimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist nativePidCollectionEnded()V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist nativePidCollectionStarted()V
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "nativePidCollection"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyAppUnresponsiveEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveDuration:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist notifyAppUnresponsiveStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyAppUnresponsiveStartUptime:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "notifyAppUnresponsive()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyWindowUnresponsiveEnded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveStartUptime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveDuration:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist notifyWindowUnresponsiveStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNotifyWindowUnresponsiveStartUptime:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "notifyWindowUnresponsive()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist preDumpIfLockTooSlowEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowStartUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowDuration:J

    return-void
.end method

.method public blacklist preDumpIfLockTooSlowStarted()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPreDumpIfLockTooSlowStartUptime:J

    return-void
.end method

.method public blacklist processCpuTrackerMethodsCalled()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsLastCallUptime:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "processCpuTracker"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist processCpuTrackerMethodsReturned()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist pushAtom()V
    .locals 41

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mEndUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v6, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v8, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrTriggerUptime:J

    sub-long v10, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAppNotRespondingStartUptime:J

    sub-long v12, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordPlacedOnQueueUptime:J

    sub-long v14, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpStackTracesStartUptime:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrProcessingStartedUptime:J

    sub-long v16, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mFirstPidsDumpingDuration:J

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mNativePidsDumpingDuration:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mExtraPidsDumpingDuration:J

    add-long v18, v1, v3

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCurrentPsiStateTotalLatency:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcessCpuTrackerMethodsTotalLatency:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mCriticalEventLogTotalLatency:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    move-wide/from16 v36, v1

    iget v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrQueueSize:I

    move/from16 v38, v1

    iget v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrType:I

    move/from16 v39, v1

    iget-object v1, v0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mDumpedProcessesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    const/16 v5, 0x204

    invoke-static/range {v5 .. v40}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJJJJJJJJJJJJJJIII)V

    return-void
.end method

.method public blacklist updateCpuStatsNowCalled()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowLastCallUptime:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "updateCpuStatsNow()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist updateCpuStatsNowReturned()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowLastCallUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mUpdateCpuStatsNowTotalLatency:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnAMSLockEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockTotalContention:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnAMSLockStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAMSLockLastTryAcquireStart:J

    const-wide/16 v0, 0x40

    const-string v2, "AMSLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist waitingOnAnrRecordLockEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLockTotalContention:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnAnrRecordLockStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mAnrRecordLastTryAcquireStart:J

    const-wide/16 v0, 0x40

    const-string v2, "anrRecordLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist waitingOnGlobalLockEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockTotalContention:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnGlobalLockStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mGlobalLockLastTryAcquireStart:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "globalLock"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist waitingOnPidLockEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockTotalContention:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnPidLockStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mPidLockLastTryAcquireStart:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "pidLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist waitingOnProcLockEnded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockLastTryAcquireStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockTotalContention:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public blacklist waitingOnProcLockStarted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->getUptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/anr/AnrLatencyTracker;->mProcLockLastTryAcquireStart:J

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "procLockContention"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method
