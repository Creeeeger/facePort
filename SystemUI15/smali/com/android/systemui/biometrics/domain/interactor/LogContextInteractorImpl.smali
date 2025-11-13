.class public final Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final displayState:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$1;

.field public final foldState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final isHardwareIgnoringTouches:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/display/data/repository/DeviceStateRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$1;

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    invoke-direct {v0, p3}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->displayState:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$1;

    iget-object p3, p4, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->shouldHandleTouches:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$2;

    invoke-direct {p4, p3}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->isHardwareIgnoringTouches:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$2;

    new-instance p3, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$3;

    invoke-direct {p3, v0}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance p3, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$4;

    invoke-direct {p3, v0}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    check-cast p2, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$5;

    invoke-direct {p3, p2}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p4, 0x1

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->foldState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method


# virtual methods
.method public final addBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;Landroid/hardware/biometrics/IBiometricContextListener;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
