.class Lcom/android/internal/inputmethod/ImeTracingClientImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingClientImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManagerGlobal;->isImeTraceEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sEnabled:Z

    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 0

    return-void
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {p2, v1, p3}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sendToService([BILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V
    .locals 0

    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-interface {p2, v2, p3}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->sendToService([BILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;->mDumpInProgress:Z

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
