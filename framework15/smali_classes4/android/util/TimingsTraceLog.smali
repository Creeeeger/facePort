.class public Landroid/util/TimingsTraceLog;
.super Ljava/lang/Object;
.source "TimingsTraceLog.java"


# static fields
.field public static final greylist-max-o DEBUG_BOOT_TIME:Z = true

.field public static final blacklist DEBUG_BOOT_TIME_THRESHOLD:J = 0xc8L

.field private static final blacklist MAX_NESTED_CALLS:I = 0xa


# instance fields
.field private blacklist mCurrentLevel:I

.field private final blacklist mMaxNestedCalls:I

.field private final blacklist mStartNames:[Ljava/lang/String;

.field private final blacklist mStartTimes:[J

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mThreadId:J

.field private final greylist-max-o mTraceTag:J


# direct methods
.method protected constructor blacklist <init>(Landroid/util/TimingsTraceLog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iget-object v0, p1, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iget-wide v0, p1, Landroid/util/TimingsTraceLog;->mTraceTag:J

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    iget v0, p1, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v0, p1, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iput-object p1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    iput p4, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    return-void
.end method

.method private greylist-max-o assertSameThread()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance of TimingsTraceLog can only be called from the thread it was created on (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but was from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createAndGetStartNamesArray()[Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist createAndGetStartTimesArray()[J
    .locals 1

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    new-array v0, v0, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final blacklist getUnfinishedTracesForDebug()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o logDuration(Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took to complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    const-string v0, "SystemServerTiming"

    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PhaseActivityManagerReady"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SystemUserUnlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "StartServices"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Boot_SystemServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Boot_EBS:   Took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms by \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o traceBegin(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not tracing duration of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because already reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " levels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aput-object p1, v0, v1

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public greylist-max-o traceEnd()V
    .locals 5

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "traceEnd called more times than traceBegin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-object v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    iget v3, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void
.end method
