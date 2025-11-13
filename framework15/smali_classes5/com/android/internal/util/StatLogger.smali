.class public Lcom/android/internal/util/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final greylist-max-o SIZE:I

.field private final greylist-max-o mCallsPerSecond:[I

.field private final greylist-max-o mCountStats:[I

.field private final greylist-max-o mDurationPerSecond:[J

.field private final greylist-max-o mDurationStats:[J

.field private final greylist-max-o mLabels:[Ljava/lang/String;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxCallsPerSecond:[I

.field private final greylist-max-o mMaxDurationPerSecond:[J

.field private final greylist-max-o mMaxDurationStats:[J

.field private greylist-max-o mNextTickTime:J

.field private final blacklist mStatsTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    array-length v0, p2

    iput v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    iput-object p2, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Stats:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_1
    iget v4, v1, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v4, v4, v0

    iget-object v5, v1, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v5, v5, v0

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    const-string v9, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    iget-object v10, v1, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v11, v10, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    if-nez v4, :cond_1

    const-wide/16 v14, 0x0

    goto :goto_2

    :cond_1
    int-to-double v14, v4

    div-double v14, v5, v14

    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-object v10, v1, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v10, v1, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v7, v10, v0

    long-to-double v7, v7

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v7, v7, v16

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    move v10, v4

    move-wide/from16 v18, v5

    aget-wide v4, v8, v0

    long-to-double v4, v4

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v16, v7

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public greylist-max-o dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-wide v7, 0x10900000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v6, v6, v3

    const-wide v7, 0x10500000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v6, v6, v3

    const-wide v8, 0x10300000004L

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v6, v6, v3

    const-wide v7, 0x10500000005L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v6, v6, v3

    const-wide v8, 0x10300000006L

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v6, v6, v3

    const-wide v8, 0x10300000007L

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o logDurationStat(IJ)J
    .locals 9

    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    if-ltz p1, :cond_4

    iget v3, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v4, v3, p1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v4, v3, p1

    add-long/2addr v4, v1

    aput-wide v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v3, v3, p1

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aput-wide v1, v3, p1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v6, p1

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v6, p1

    aput v6, v5, p1

    :cond_1
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v5, v5, p1

    iget-object v7, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v7, v7, p1

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v6, p1

    aput-wide v6, v5, p1

    :cond_2
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    const/4 v6, 0x0

    aput v6, v5, p1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, p1

    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    :cond_3
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v5, p1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, p1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v5, p1

    add-long/2addr v6, v1

    aput-wide v6, v5, p1

    monitor-exit v0

    return-wide v1

    :cond_4
    const-string v3, "StatLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid event ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
