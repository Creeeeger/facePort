.class public final Landroid/content/res/ResourceTimer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourceTimer$Config;,
        Landroid/content/res/ResourceTimer$Timer;
    }
.end annotation


# static fields
.field private static blacklist ENABLE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResourceTimer"

.field private static blacklist mHandler:Landroid/os/Handler;

.field private static blacklist sApiMap:[I

.field private static blacklist sConfig:Landroid/content/res/ResourceTimer$Config;

.field private static blacklist sCurrentPoint:I

.field private static blacklist sEnabled:Z

.field private static blacklist sIncrementalMetrics:Z

.field private static blacklist sLastUpdated:J

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sManager:Landroid/content/res/ResourceTimer;

.field private static final blacklist sProcessStart:J

.field private static final blacklist sPublicationPoints:[J

.field private static blacklist sTimers:[Landroid/content/res/ResourceTimer$Timer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Landroid/content/res/ResourceTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    sput-boolean v0, Landroid/content/res/ResourceTimer;->sIncrementalMetrics:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sProcessStart:J

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void

    :array_0
    .array-data 8
        0x5
        0x3c
        0x2d0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResourceTimer constructor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist dumpTimers(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 16

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    sget-object v3, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "-refresh"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {v4}, Landroid/content/res/ResourceTimer;->update(Z)V

    sget-wide v6, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    sget-wide v8, Landroid/content/res/ResourceTimer;->sProcessStart:J

    sub-long/2addr v6, v8

    const-string v0, "  config runtime=%d proc=%s\n"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v0

    iget v8, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-eqz v8, :cond_1

    sget-object v8, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v8, v8, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v9, v8, v0

    const-string v8, "  stats timer=%s cnt=%d avg=%d min=%d max=%d pval=%s largest=%s\n"

    iget v10, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, v3, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget v13, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    int-to-long v13, v13

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget v12, v3, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v3, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v14}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    invoke-static {v15}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v15

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_1
    :try_start_3
    const-string v0, "  Timers are not enabled in this process"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static blacklist handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/content/res/ResourceTimer;->publish()V

    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native blacklist nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I
.end method

.method private static native blacklist nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I
.end method

.method private static blacklist packedString([I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\]\\[ ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist publish()V
    .locals 19

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/ResourceTimer;->update(Z)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v2, v2, v1

    iget v3, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-lez v3, :cond_0

    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v4, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v5}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s count=%d pvalues=%s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResourceTimer"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v5, v3, v1

    iget v6, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    iget-wide v7, v2, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v4, 0x0

    aget v9, v3, v4

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v10, v3, v0

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v11, 0x2

    aget v3, v3, v11

    iget-object v12, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    iget-object v14, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v14, v14, v4

    iget-object v4, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v15, v4, v0

    iget-object v4, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v16, v4, v11

    iget-object v4, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v17, v4, v13

    iget-object v4, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    const/4 v11, 0x4

    aget v18, v4, v11

    const/16 v4, 0x205

    move v11, v3

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-static/range {v4 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIIIIIIIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    add-int/2addr v1, v0

    sput v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    return-void
.end method

.method public static blacklist start()V
    .locals 5

    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/content/res/ResourceTimer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/res/ResourceTimer$Config;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$Config;-><init>(Landroid/content/res/ResourceTimer$Config-IA;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    invoke-static {v1}, Landroid/content/res/ResourceTimer;->nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I

    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [Landroid/content/res/ResourceTimer$Timer;

    sput-object v1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    new-instance v4, Landroid/content/res/ResourceTimer$Timer;

    invoke-direct {v4, v2}, Landroid/content/res/ResourceTimer$Timer;-><init>(Landroid/content/res/ResourceTimer$Timer-IA;)V

    aput-object v4, v3, v1

    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxBuckets:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxLargest:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [I

    sput-object v1, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "GetResourceValue"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    goto :goto_2

    :cond_3
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "RetrieveAttributes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x2

    aput v3, v2, v1

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aput v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sput v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    monitor-exit v0

    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResourceTimer started too early"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist startTimer()V
    .locals 6

    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sget-object v2, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sget v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sub-int/2addr v3, v2

    int-to-long v3, v3

    mul-long/2addr v3, v0

    move-wide v0, v3

    :goto_0
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    sget-boolean v2, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    :cond_1
    sget-object v2, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    sget-wide v3, Landroid/content/res/ResourceTimer;->sProcessStart:J

    add-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private static blacklist update(Z)V
    .locals 2

    sget-object v0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    invoke-static {v0, p0}, Landroid/content/res/ResourceTimer;->nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void
.end method
