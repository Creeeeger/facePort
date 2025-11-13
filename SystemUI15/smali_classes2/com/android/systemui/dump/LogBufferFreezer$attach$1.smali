.class public final Lcom/android/systemui/dump/LogBufferFreezer$attach$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "bugreport"

    const-string p2, "BUGREPORT_STARTED broadcast received"

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-string p1, "LogBufferFreezer"

    const-string p2, "Freezing log buffers"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    iget-object v0, v0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->freeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit p1

    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    iget-wide v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->freezeDuration:J

    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method
