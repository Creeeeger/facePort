.class public final Landroid/os/WorkDuration;
.super Ljava/lang/Object;
.source "WorkDuration.java"


# instance fields
.field blacklist mActualCpuDurationNanos:J

.field blacklist mActualGpuDurationNanos:J

.field blacklist mActualTotalDurationNanos:J

.field blacklist mWorkPeriodStartTimestampNanos:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iput-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    iput-wide p3, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iput-wide p1, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iput-wide p5, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iput-wide p7, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/WorkDuration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/WorkDuration;

    iget-wide v3, v1, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v1, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v1, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v1, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    iget-wide v5, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getActualCpuDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    return-wide v0
.end method

.method public whitelist getActualGpuDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    return-wide v0
.end method

.method public whitelist getActualTotalDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    return-wide v0
.end method

.method public whitelist getWorkPeriodStartTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-wide v0, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setActualCpuDurationNanos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualCpuDurationNanos:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual CPU duration should be greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setActualGpuDurationNanos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualGpuDurationNanos:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual GPU duration should be greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setActualTotalDurationNanos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Landroid/os/WorkDuration;->mActualTotalDurationNanos:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the actual total duration should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWorkPeriodStartTimestampNanos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Landroid/os/WorkDuration;->mWorkPeriodStartTimestampNanos:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the work period start timestamp should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
