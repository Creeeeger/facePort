.class public final Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $connectedIds:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$connectedIds:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayConnected(I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "display with id="

    const-string v1, " connected."

    const-string v2, "DisplayRepository"

    invoke-static {p1, v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$connectedIds:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->_ignoredDisplayIds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$connectedIds:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisplayDisconnected(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$connectedIds:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "display with id="

    const-string v1, " disconnected."

    const-string v2, "DisplayRepository"

    invoke-static {p1, v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->_ignoredDisplayIds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;->$connectedIds:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
