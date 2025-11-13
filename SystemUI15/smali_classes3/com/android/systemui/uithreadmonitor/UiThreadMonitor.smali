.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG_LOG:Z

.field public static final ENABLE_PAUSE:Z


# instance fields
.field public anrCount:I

.field public final asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

.field public awakeCount:I

.field public final bgHandler:Landroid/os/Handler;

.field public final blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

.field public final display$delegate:Lkotlin/Lazy;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final handler:Landroid/os/Handler;

.field public volatile isPaused:Z

.field public lastAsyncMsgHandledTimed:J

.field public lastAwakeTime:J

.field public lastChoreographerLogCount:I

.field public lastChoreographerLogTime:J

.field public lastChoreographerTotalDrawCount:I

.field public lastDisplayState:I

.field public lastStackTrace:Ljava/lang/String;

.field public lastStackTraceTime:J

.field public final looper:Landroid/os/Looper;

.field public final looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public looperMsgLog:Z

.field public looperSlowLog:Z

.field public final mainThread$delegate:Lkotlin/Lazy;

.field public final monitorThread$delegate:Lkotlin/Lazy;

.field public final onChoreographerLog:Lkotlin/jvm/functions/Function2;

.field public final runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "UiThreadMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->ENABLE_PAUSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->bgHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p5, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$mainThread$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$mainThread$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    iput-boolean p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$display$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$display$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->display$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->onChoreographerLog:Lkotlin/jvm/functions/Function2;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    iget v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    invoke-static {v3, v4}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UiThreadMonitor state:\n  monitorThread state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", paused="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", count="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n  mainThread state="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n  lastAsyncMsgHandledTime="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v1, v2}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n  lastStackTrace=[\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  ], "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setAwake(I)V
    .locals 8

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    sub-long v2, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTick count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UiThreadMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
