.class public Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.super Ljava/lang/Object;
.source "PerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field private static final blacklist STACK_SIZE_TO_PROTO_LOG_ENTRY_CALL:I = 0xc


# instance fields
.field private final blacklist mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mCacheUpdater:Ljava/lang/Runnable;

.field private final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mDefaultLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            "Ljava/util/Map<",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

.field private final blacklist mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;


# direct methods
.method public static synthetic blacklist $r8$lambda$1smzddWwx2Lg235ZYvsOQerPYGE(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStop(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QZV8PLDMgVTfgSjo-VqpZyP7eik(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJLandroid/tracing/perfetto/TracingContext;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$doLogToProto$5(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m-WRM1WOEMtchs7r-i82mlS0t-o(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->dumpTransitionTraceConfig()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q2BoAKCWvObZvCi7whO_-Qyf3YU(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$log$1(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uxXXG2Em964vhh5tTfVmBlwvfK8(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStart(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogViewerConfigReader;Ljava/util/TreeMap;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;",
            "Lcom/android/internal/protolog/ProtoLogViewerConfigReader;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    new-instance v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    new-instance v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    new-instance v0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v1, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    iput-object p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Ljava/util/TreeMap;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogViewerConfigReader;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist collectStackTrace()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/16 v3, 0xc

    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method private blacklist doLogToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object p5

    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    :try_start_0
    invoke-static {p5, p6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ProtoLog"

    const-string v3, "Invalid ProtoLog format string."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move-object v0, p5

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN MESSAGE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p6, v3

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist doLogToProto(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;JI[Ljava/lang/Object;J)V
    .locals 13

    move-object v10, p0

    iget-object v11, v10, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v12, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJ)V

    invoke-virtual {v11, v12}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method private blacklist dumpTransitionTraceConfig()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ProtoLog"

    const-string v2, "Failed to get viewer input stream."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;-><init>(Landroid/util/proto/ProtoInputStream;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method private blacklist getLogFromLevel(Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/common/LogLevel;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method

.method private blacklist internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000025L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private blacklist internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-boolean v1, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v1

    const-wide v3, 0x10d0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iput-boolean v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    :cond_0
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v2

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10400000001L

    invoke-virtual {v2, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10c00000002L

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000024L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$doLogToProto$3(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Double;)V
    .locals 4

    const-wide v0, 0x20100000004L

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    return-void
.end method

.method static synthetic blacklist lambda$doLogToProto$4(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide v1, 0x20500000005L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method private synthetic blacklist lambda$doLogToProto$5(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJLandroid/tracing/perfetto/TracingContext;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p9

    invoke-virtual/range {p9 .. p9}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-virtual {v6, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v8

    if-ge v0, v8, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    array-length v9, v3

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v3, v10

    invoke-static {v4, v8}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v5, v13}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    :cond_1
    nop

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v6, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->collectStackTrace()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v8

    :cond_3
    invoke-virtual/range {p9 .. p9}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v9

    const-wide v10, 0x10400000008L

    move-wide/from16 v12, p5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10b00000068L

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v14, 0x10600000001L

    move-wide/from16 v12, p7

    invoke-virtual {v9, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v14, 0x0

    if-eqz v3, :cond_6

    const/4 v15, 0x0

    new-instance v16, Landroid/util/LongArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/LongArray;-><init>()V

    move-object/from16 v17, v16

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v16

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v16

    move-object/from16 v16, v7

    array-length v7, v3

    move v12, v15

    move v15, v14

    move v14, v0

    :goto_1
    if-ge v14, v7, :cond_4

    aget-object v13, v3, v14

    invoke-static {v4, v12}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    move/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-wide/from16 v18, v10

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, v19

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-wide/from16 v18, v10

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-wide/from16 v18, v10

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, v19

    move/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-wide/from16 v18, v10

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v3, v19

    :try_start_2
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v4, v18

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v21, v7

    move-wide/from16 v18, v10

    move-object/from16 v7, v17

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move/from16 v21, v7

    move-wide/from16 v18, v10

    move-object/from16 v7, v17

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v4, v18

    move/from16 v21, v7

    move-wide/from16 v18, v10

    move-object/from16 v7, v17

    goto :goto_2

    :pswitch_2
    move-object/from16 v4, v18

    move-object/from16 v3, v19

    :try_start_4
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    move-wide/from16 v18, v10

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v21, v7

    move-object/from16 v7, v17

    :try_start_6
    invoke-virtual {v7, v10, v11}, Landroid/util/LongArray;->add(J)V

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v21, v7

    move-object/from16 v7, v17

    goto :goto_2

    :catch_5
    move-exception v0

    move/from16 v21, v7

    move-wide/from16 v18, v10

    move-object/from16 v7, v17

    goto :goto_2

    :pswitch_3
    move/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-wide/from16 v18, v10

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    const-wide v10, 0x20d00000002L

    invoke-virtual {v9, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v10, 0x1

    move v15, v10

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_2
    const-string v10, "ProtoLog"

    const-string v11, "Invalid ProtoLog paramsMask"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    nop

    :goto_4
    nop

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v7

    move-wide/from16 v10, v18

    move/from16 v7, v21

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object/from16 v3, p3

    move/from16 v4, p4

    goto/16 :goto_1

    :cond_4
    move-object/from16 v7, v17

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-wide/from16 v18, v10

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v7}, Landroid/util/LongArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    const-wide v10, 0x21200000003L

    invoke-virtual {v7, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v13

    invoke-virtual {v9, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move v14, v15

    goto :goto_6

    :cond_6
    move-object/from16 v16, v7

    move-wide/from16 v18, v10

    :goto_6
    invoke-virtual {v6, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide v3, 0x10d00000006L

    invoke-virtual {v9, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    move-wide/from16 v3, v18

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    if-eqz v14, :cond_8

    const-wide v10, 0x10d0000000dL

    const/4 v0, 0x2

    invoke-virtual {v9, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$dumpTransitionTraceConfig$2(Landroid/util/proto/ProtoInputStream;Landroid/tracing/perfetto/TracingContext;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide v3, 0x10400000008L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000069L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V

    :cond_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ProtoLog"

    const-string v2, "Failed to read ProtoLog viewer config to dump on tracing end"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$log$1(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;J)V
    .locals 9

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToProto(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;JI[Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/String;)Landroid/util/proto/ProtoInputStream;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load viewer config file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProtoLog"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$onShellCommand$6(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "logToLogcat"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->doLogToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private blacklist logToProto(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;JI[Ljava/lang/Object;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "logToProto"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->doLogToProto(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;JI[Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private declared-synchronized blacklist onTracingInstanceStart(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/protolog/common/IProtoLogGroup;

    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p1, v4}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist onTracingInstanceStop(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/protolog/common/IProtoLogGroup;

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p1, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    nop

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs blacklist setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .locals 1

    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-wide v4, 0x10d00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const-wide v4, 0x10d00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :pswitch_1
    const-wide v4, 0x10e00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :pswitch_2
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    nop

    const-wide v4, 0x10600000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 2

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getLogFromLevel(Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isProtoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 16

    const-string/jumbo v0, "log"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;

    move-object v3, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    move-object v1, v11

    move-wide v11, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .locals 10

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v7, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string/jumbo v7, "start"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "stop"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_2

    :sswitch_2
    const-string v7, "disable-text"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v7, "enable-text"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :goto_1
    move v7, v9

    :goto_2
    packed-switch v7, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v5

    return v5

    :pswitch_0
    invoke-direct {p0, v5, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v5, v3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;)V

    invoke-direct {p0, v8, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_2
    const-string v5, "Command not supported. Please start and stop ProtoLog tracing with Perfetto."

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_3
        -0x3d842b0e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist startLoggingStackTrace([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v0, p2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist stopLoggingStackTrace()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
