.class public final Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt;->isDevicePluggedIn(Lcom/android/systemui/statusbar/policy/BatteryController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt;->isBatteryPowerSaveEnabled(Lcom/android/systemui/statusbar/policy/BatteryController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt;->getBatteryLevel(Lcom/android/systemui/statusbar/policy/BatteryController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor$tileData$1;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileDataInteractor$tileData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    return-object p0
.end method
