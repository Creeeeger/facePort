.class public final Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/gtscell/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;-><init>(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1",
        "Lcom/samsung/android/gtscell/ResultCallback;",
        "onResult",
        "",
        "result",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const-string/jumbo v3, "setData(GtsItemResult):"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getItemResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getRespond$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {p1, v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    const-string/jumbo v1, "setData(GtsResult):"

    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getFinishCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/RemoteCallback;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gts_cell_config"

    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getConfiguration$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "gts_cell_result"

    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->build()Lcom/samsung/android/gtscell/data/result/GtsResult;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "gts_cell_version"

    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getGtsCellVersion$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    throw p1
.end method
