.class public final Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final isAvailable:Z

.field public final reduceBrightColorsController:Lcom/android/systemui/qs/ReduceBrightColorsController;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;ZLcom/android/systemui/qs/ReduceBrightColorsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->isAvailable:Z

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->reduceBrightColorsController:Lcom/android/systemui/qs/ReduceBrightColorsController;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->isAvailable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->reduceBrightColorsController:Lcom/android/systemui/qs/ReduceBrightColorsController;

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/ReduceBrightColorsControllerExtKt;->isEnabled(Lcom/android/systemui/qs/ReduceBrightColorsController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor$tileData$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor$tileData$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/reducebrightness/domain/interactor/ReduceBrightColorsTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
