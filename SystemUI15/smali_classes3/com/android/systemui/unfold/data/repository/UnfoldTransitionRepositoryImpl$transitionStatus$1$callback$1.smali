.class public final Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


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

    iput-object p1, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    sget-object v0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionFinished;->INSTANCE:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionFinished;

    iget-object p0, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionInProgress;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionInProgress;-><init>(F)V

    iget-object p0, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    sget-object v0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionStarted;->INSTANCE:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionStatus$TransitionStarted;

    iget-object p0, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
