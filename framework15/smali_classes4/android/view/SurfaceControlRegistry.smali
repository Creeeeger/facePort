.class public Landroid/view/SurfaceControlRegistry;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlRegistry$DefaultReporter;,
        Landroid/view/SurfaceControlRegistry$Reporter;,
        Landroid/view/SurfaceControlRegistry$NoOpRegistry;
    }
.end annotation


# static fields
.field private static final blacklist DUMP_LIMIT:I = 0x100

.field private static final blacklist MAX_LAYERS_REPORTING_THRESHOLD:I = 0x400

.field private static final blacklist NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

.field private static final blacklist RESET_REPORTING_THRESHOLD:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlRegistry"

.field static blacklist sCallStackDebuggingEnabled:Z

.field static blacklist sCallStackDebuggingInitialized:Z

.field private static blacklist sCallStackDebuggingMatchCall:Ljava/lang/String;

.field private static blacklist sCallStackDebuggingMatchName:Ljava/lang/String;

.field private static final blacklist sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static volatile blacklist sProcessRegistry:Landroid/view/SurfaceControlRegistry;


# instance fields
.field private blacklist mHasReportedExceedingMaxThreshold:Z

.field private blacklist mMaxLayersReportingThreshold:I

.field private blacklist mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

.field private blacklist mResetReportingThreshold:I

.field private final blacklist mSurfaceControls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/SurfaceControlRegistry$NoOpRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>(Landroid/view/SurfaceControlRegistry$NoOpRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControlRegistry$DefaultReporter;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>(Landroid/view/SurfaceControlRegistry$DefaultReporter-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    const/16 v0, 0x100

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    return-void
.end method

.method public static blacklist createProcessInstance(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/SurfaceControlRegistry;

    invoke-direct {v1}, Landroid/view/SurfaceControlRegistry;-><init>()V

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Expected caller to hold READ_FRAME_BUFFER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist destroyProcessInstance()V
    .locals 2

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist dump(IZLjava/io/PrintWriter;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->runGcAndFinalizers()V

    :cond_0
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    iget-object v2, v2, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, p0, p2}, Landroid/view/SurfaceControlRegistry$DefaultReporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingMatchName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingMatchCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getProcessInstance()Landroid/view/SurfaceControlRegistry;
    .locals 2

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final blacklist initializeCallStackDebugging()V
    .locals 3

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    nop

    const-string/jumbo v1, "persist.wm.debug.sc.tx.log_match_call"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    nop

    const-string/jumbo v1, "persist.wm.debug.sc.tx.log_match_name"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling transaction call stack debugging: matchCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method static final blacklist isCallStackDebuggingEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    return v0
.end method

.method private static blacklist runGcAndFinalizers()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran gc and finalizers ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControlRegistry"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .locals 6

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iget-object v2, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    iget-object v4, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    const/16 v5, 0x100

    invoke-interface {v2, v4, v5, v1}, Landroid/view/SurfaceControlRegistry$Reporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    iput-boolean v3, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    return-void
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V
    .locals 7

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, ""

    if-eqz p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-eqz p3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    const-string v3, "SurfaceControlRegistry"

    if-eqz p5, :cond_7

    if-eqz p2, :cond_5

    iget-object v4, p2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " t="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    nop

    :goto_3
    const-string v4, ","

    if-eqz p4, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v0, " ("

    if-eqz p4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    nop

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    sget-object v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    sget-object v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    sget-object v4, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v1
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .locals 3

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setCallStackDebuggingParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .locals 4

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    if-lez p1, :cond_1

    if-ge p2, p1, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    iput p2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    iput-object p3, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected non-null reporter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected maxLayersReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be > 0 and resetReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be < maxLayersReportingThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
