.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;->logPrioritizedNetworkAvailable(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;->logPrioritizedNetworkLost(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$hasPrioritizedNetworkCapabilities$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
