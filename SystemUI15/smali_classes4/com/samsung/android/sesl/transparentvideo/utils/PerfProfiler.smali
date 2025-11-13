.class public final Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final profileResultMap:Ljava/util/HashMap;

.field public static final profileResultMapListener:Ljava/util/HashMap;


# instance fields
.field public accumFlushDuration:J

.field public accumFrameCount:I

.field public accumFrameDropped:I

.field public final renderInfo:Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

.field public final reportInterval:J

.field public startTime:J

.field public final tag:Ljava/lang/String;

.field public final targetFps:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->profileResultMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->profileResultMapListener:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;-><init>(Ljava/lang/String;JLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Float;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->tag:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->reportInterval:J

    iput-object p4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->targetFps:Ljava/lang/Float;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;-><init>(IIFFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->renderInfo:Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x3e8

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;-><init>(Ljava/lang/String;JLjava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final profile(JJ)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->startTime:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->renderInfo:Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameCount:I

    sub-long/2addr p3, p1

    cmp-long p1, p3, v2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->targetFps:Ljava/lang/Float;

    if-eqz p1, :cond_2

    long-to-float p2, p3

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v1, v4

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameDropped:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameDropped:I

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameDropped:I

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFlushDuration:J

    add-long/2addr v4, p3

    iput-wide v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFlushDuration:J

    iget p2, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    int-to-long v4, p2

    cmp-long p2, p3, v4

    if-lez p2, :cond_4

    long-to-int p2, p3

    iput p2, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->startTime:J

    sub-long/2addr p2, v4

    iget-wide v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->reportInterval:J

    cmp-long p2, p2, v4

    if-ltz p2, :cond_5

    iput-wide v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->startTime:J

    iget p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameCount:I

    int-to-float p2, p2

    long-to-float p3, v4

    const p4, 0x3a83126f    # 0.001f

    mul-float/2addr p3, p4

    div-float p4, p2, p3

    iput p4, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    iget p4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameDropped:I

    iput p4, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    iget-wide v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFlushDuration:J

    long-to-float p4, v4

    div-float/2addr p4, p2

    iput p4, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p4, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x3e8

    invoke-direct {p2, p4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput p2, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->tag:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " [Interval="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", TargetFps="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PerfProfiler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFlushDuration:J

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameCount:I

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->accumFrameDropped:I

    iput p2, v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    sget-object p2, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->profileResultMap:Ljava/util/HashMap;

    const-string p3, ","

    const-string v0, "\n"

    invoke-static {p1, p3, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler$profile$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler$profile$1$1$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot read cpu clock "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
