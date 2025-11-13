.class public final Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;
.super Ljava/lang/Object;
.source "GtsCellProvider.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1\n*L\n1#1,438:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onResult(Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V
    .locals 7
    .param p1    # Lcom/samsung/android/gtscell/data/result/GtsItemResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    :try_start_1
    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v2

    const-string/jumbo v3, "setData(GtsItemResult):"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getItemResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getRespond$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {p1, v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 394
    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    const-string/jumbo v1, "setData(GtsResult):"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getFinishCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/RemoteCallback;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gts_cell_config"

    .line 396
    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getConfiguration$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "gts_cell_result"

    .line 397
    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->build()Lcom/samsung/android/gtscell/data/result/GtsResult;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "gts_cell_version"

    .line 398
    iget-object v3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v3}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getGtsCellVersion$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {p1, v1}, Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 402
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 384
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
