.class public final Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;
.super Ljava/lang/Object;
.source "GtsCellProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;-><init>(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,438:1\n1648#2,2:439\n*E\n*S KotlinDebug\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1\n*L\n408#1,2:439\n*E\n"
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

    .line 406
    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 408
    iget-object v0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getRespond$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V

    .line 411
    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v1

    const-string v2, "TIMEOUT !!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v2}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->getItemResults()Ljava/util/List;

    move-result-object v2

    .line 414
    new-instance v10, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;

    .line 416
    sget-object v5, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string/jumbo v6, "timeout"

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v10

    .line 414
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 413
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v1}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getFinishCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/RemoteCallback;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gts_cell_config"

    .line 422
    iget-object v4, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v4}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getConfiguration$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/GtsConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "gts_cell_result"

    .line 423
    iget-object v4, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {v4}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->build()Lcom/samsung/android/gtscell/data/result/GtsResult;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "gts_cell_version"

    .line 424
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;->this$0:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;

    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getGtsCellVersion$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)I

    move-result p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {v1, v2}, Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 427
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
