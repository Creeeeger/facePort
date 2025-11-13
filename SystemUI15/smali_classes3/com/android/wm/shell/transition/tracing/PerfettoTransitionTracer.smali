.class public final Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/tracing/TransitionTracer;


# instance fields
.field public final mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDataSource:Landroid/tracing/transition/TransitionDataSource;

.field public final mHandlerMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Landroid/tracing/transition/TransitionDataSource;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3, v4, v5}, Landroid/tracing/transition/TransitionDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mHandlerMapping:Ljava/util/Map;

    sget-object p0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {p0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    new-instance p0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/tracing/transition/TransitionDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    return-void
.end method


# virtual methods
.method public final logAborted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x20

    const-string v2, "logAborted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v2, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public final logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x20

    const-string v2, "logDispatched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v3, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;I)V

    invoke-virtual {v2, v3}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public final logMergeRequested(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x20

    const-string v2, "logMergeRequested"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v2, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda4;-><init>(III)V

    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public final logMerged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x20

    const-string v2, "logMerged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v2, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer$$ExternalSyntheticLambda4;-><init>(III)V

    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    return-void
.end method
