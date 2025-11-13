.class public final Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$foldUpdate$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$foldUpdate$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldUpdate(I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->Companion:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_CLOSED:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fold update with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_FULL_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_HALF_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->START_CLOSING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->START_OPENING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/unfold/data/repository/FoldStateRepositoryImpl$foldUpdate$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
