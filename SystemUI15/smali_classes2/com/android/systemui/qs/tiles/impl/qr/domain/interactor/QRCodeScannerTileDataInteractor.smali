.class public final Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final qrController:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->qrController:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->qrController:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isCameraAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$1;-><init>(Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor$tileData$2;-><init>(Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;->INSTANCE:Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileDataInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method
