.class public final Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;
.implements Lcom/android/wm/shell/transition/tracing/TransitionTracer;


# instance fields
.field public final mEnabledLock:Ljava/lang/Object;

.field public final mHandlerIds:Ljava/util/Map;

.field public final mHandlerUseCountInTrace:Ljava/util/Map;

.field public final mProtoProvider:Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$1;

.field public final mRemovedFromTraceCallbacks:Ljava/util/Map;

.field public final mTraceBuffer:Lcom/android/internal/util/TraceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$1;-><init>(Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;)V

    new-instance v1, Lcom/android/internal/util/TraceBuffer;

    new-instance v2, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;)V

    const/16 v3, 0x3c00

    invoke-direct {v1, v3, v0, v2}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final logAborted(I)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v1}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v1, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    iput v0, v1, Lcom/android/wm/shell/nano/Transition;->handler:I

    iget-object p1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    new-instance v0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final logMergeRequested(II)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    iput p2, v0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final logMerged(II)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/nano/Transition;

    invoke-direct {v0}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    iput p1, v0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    iput p2, v0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "save-for-bugreport"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v0

    invoke-static {v1, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v0

    :pswitch_0
    sget-boolean p2, Landroid/os/Build;->IS_USER:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_3
    const-string p2, "Tracer#startTrace"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p2, "Starting shell transition trace."

    const-string v0, "ShellTransitionTracer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const p1, 0x4e2000

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    new-instance p2, Ljava/io/File;

    const-string v0, "/data/misc/wmtrace/shell_transition_trace.winscope"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_5
    const-string v0, "Tracer#stopTrace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "Stopping shell transition trace."

    const-string v1, "ShellTransitionTracer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    const/16 p1, 0x3c00

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    return v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_2
    sget-boolean p2, Landroid/os/Build;->IS_USER:Z

    if-eqz p2, :cond_7

    invoke-static {p1}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_7
    const-string p2, "TransitionTracer#saveForBugreport"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/shell_transition_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_3
    return v2

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x174ab7ac -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Start tracing the transitions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stop"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Stop tracing the transitions."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "save-for-bugreport"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Flush in memory transition trace to file."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v3, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-direct {v3}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerIds:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    iput-object p0, p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    return-void
.end method

.method public final writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 7

    const-string v0, "ShellTransitionTracer"

    const-string v1, "Writing file to "

    const-string v2, "TransitionTracer#writeTraceToFileLocked"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    invoke-direct {v2}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;-><init>()V

    const-wide v3, 0x4543415254534d57L    # 4.655612620672777E25

    iput-wide v3, v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from process "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Unable to write buffer to file"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ERROR: Unable to write buffer to file ::\n "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
