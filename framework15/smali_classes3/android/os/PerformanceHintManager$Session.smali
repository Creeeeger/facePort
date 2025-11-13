.class public Landroid/os/PerformanceHintManager$Session;
.super Ljava/lang/Object;
.source "PerformanceHintManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerformanceHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceHintManager$Session$Hint;
    }
.end annotation


# static fields
.field public static final blacklist CPU_LOAD_DOWN:I = 0x1

.field public static final blacklist CPU_LOAD_RESET:I = 0x2

.field public static final blacklist CPU_LOAD_RESUME:I = 0x3

.field public static final blacklist CPU_LOAD_UP:I = 0x0

.field public static final blacklist GPU_LOAD_DOWN:I = 0x6

.field public static final blacklist GPU_LOAD_RESET:I = 0x7

.field public static final blacklist GPU_LOAD_UP:I = 0x5


# instance fields
.field private blacklist mNativeSessionPtr:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeCloseSession(J)V

    iput-wide v2, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/os/PerformanceHintManager$Session;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getThreadIds()[I
    .locals 2

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeGetThreadIds(J)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist reportActualWorkDuration(J)V
    .locals 2

    long-to-float v0, p1

    const-string/jumbo v1, "the actual duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeReportActualWorkDuration(JJ)V

    return-void
.end method

.method public whitelist reportActualWorkDuration(Landroid/os/WorkDuration;)V
    .locals 11

    iget-wide v0, p1, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p1, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p1, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p1, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iget-wide v4, p1, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v1, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    iget-wide v3, p1, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iget-wide v5, p1, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iget-wide v7, p1, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iget-wide v9, p1, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    invoke-static/range {v1 .. v10}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeReportActualWorkDuration(JJJJJ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "either the actual CPU duration or the actual GPU duration should be greaterthan zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual GPU duration should be greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual CPU duration should be greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual total duration should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the work period start timestamp should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendHint(I)V
    .locals 2

    int-to-float v0, p1

    const-string/jumbo v1, "the hint ID should be at least zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    :try_start_0
    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeSendHint(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist setPreferPowerEfficiency(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeSetPreferPowerEfficiency(JZ)V

    return-void
.end method

.method public whitelist setThreads([I)V
    .locals 4

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "tids cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeSetThreads(J[I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread id list can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateTargetWorkDuration(J)V
    .locals 2

    long-to-float v0, p1

    const-string/jumbo v1, "the hint target duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeUpdateTargetWorkDuration(JJ)V

    return-void
.end method
