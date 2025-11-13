.class public final Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final isUdfps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final propertiesInitialized:Lkotlinx/coroutines/flow/Flow;

.field public final sensorLocation:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final udfpsSensorBounds:Lkotlinx/coroutines/flow/Flow;

.field public final unscaledSensorLocation:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->context:Landroid/content/Context;

    check-cast p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object p2, p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->propertiesInitialized:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->propertiesInitialized:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$1;

    iget-object v0, p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p2, v0}, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->isUdfps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, p1, v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->isUdfps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p5, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    new-instance p1, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$2;

    iget-object p2, p5, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->displayChanges:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$unscaledSensorLocation$1;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$unscaledSensorLocation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorLocations:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;

    invoke-direct {v0, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p1, p4, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->scaleForResolution:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$sensorLocation$1;

    invoke-direct {p2, p5}, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$sensorLocation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->sensorLocation:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p1, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$3;

    iget-object p2, p6, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->udfpsSensorBounds:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
