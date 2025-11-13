.class public final Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->box-impl(Z)Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightTemporarilyUnavailable;->INSTANCE:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightTemporarilyUnavailable;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->box-impl(Z)Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onFlashlightError()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->box-impl(Z)Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
