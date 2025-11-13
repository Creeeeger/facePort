.class public Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private mStartTimeNs:J

.field private mStopTimeNs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->isStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStarted()Z
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStartTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopped()Z
    .locals 4

    .line 14
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStopTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStartTimeNs:J

    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStopTimeNs:J

    .line 49
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStopTimeNs:J

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->mStartTimeNs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
