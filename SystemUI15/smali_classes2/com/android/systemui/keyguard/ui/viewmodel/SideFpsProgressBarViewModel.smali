.class public final Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _progress:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _visible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final dozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final isFingerprintAuthRunning:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isProlongedTouchRequiredForAuthentication:Lkotlinx/coroutines/flow/Flow;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mergedFingerprintAuthenticationStatus:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$filter$1;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final progress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final progressBarLength:Lkotlinx/coroutines/flow/Flow;

.field public final progressBarLocation:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2;

.field public final progressBarThickness:I

.field public final rotation:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$3;

.field public final sfpsSensorInteractor:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->context:Landroid/content/Context;

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->_visible:Lkotlinx/coroutines/flow/StateFlowImpl;

    check-cast p2, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;

    iget-object p8, p2, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    iget-object p9, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {p8, p9}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p8

    invoke-static {p8}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p8

    invoke-static {p8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p8

    new-instance p9, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$filter$1;

    invoke-direct {p9, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p4, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->sensorLocation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$1;

    invoke-direct {p6, p5}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x7f0713b5

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->progressBarThickness:I

    check-cast p7, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object p1, p7, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p6, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$progressBarLocation$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$progressBarLocation$2;

    new-instance p7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p7, p1, p5, p6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2;

    invoke-direct {p6, p7, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;)V

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$isFingerprintAuthRunning$1;

    const/4 p6, 0x0

    invoke-direct {p0, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$isFingerprintAuthRunning$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isRunning:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p2, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->sfpsAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p6, p3, p2, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$rotation$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$rotation$2;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p2, p1, p5, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$3;

    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p4, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->isProlongedTouchRequiredForAuthentication:Lkotlinx/coroutines/flow/Flow;

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final setVisible(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->_visible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
