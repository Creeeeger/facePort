.class public final Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "LogBufferFreezer"

    const-string v1, "Unfreezing log buffers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    iget-object v1, v1, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
