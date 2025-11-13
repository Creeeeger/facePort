.class public final Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1$callback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQRCodeScannerActivityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1$callback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->qrController:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    iget-object v1, v0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isAbleToLaunchScannerActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;->INSTANCE:Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
