.class public final Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


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

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/display/data/DisplayEvent$Added;

    invoke-direct {v0, p1}, Lcom/android/systemui/display/data/DisplayEvent$Added;-><init>(I)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/display/data/DisplayEvent$Changed;

    invoke-direct {v0, p1}, Lcom/android/systemui/display/data/DisplayEvent$Changed;-><init>(I)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/display/data/DisplayEvent$Removed;

    invoke-direct {v0, p1}, Lcom/android/systemui/display/data/DisplayEvent$Removed;-><init>(I)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
