.class public final Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _requestId:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shouldHandleTouches:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final iconPadding:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;

.field public final iconSize:I

.field public final requestId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final shouldHandleTouches:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/hardware/fingerprint/FingerprintManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070cf7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid pixelPitch: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ". Pixel pitch must be updated per device."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "UdfpsOverlayInteractor"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07176d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->iconSize:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->_requestId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->requestId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->_shouldHandleTouches:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->shouldHandleTouches:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$udfpsOverlayParams$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$udfpsOverlayParams$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance p3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p5, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->iconPadding:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;

    return-void
.end method


# virtual methods
.method public final setHandleTouches(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->_shouldHandleTouches:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isUltrasonicUdfps()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->requestId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v4, v5, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->setIgnoreDisplayTouches(JIZ)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v2, p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
