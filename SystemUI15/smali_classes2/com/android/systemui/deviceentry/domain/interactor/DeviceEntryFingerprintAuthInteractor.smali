.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticationStatus:Lkotlinx/coroutines/flow/Flow;

.field public final fingerprintError:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$2;

.field public final fingerprintFailure:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$1;

.field public final fingerprintHelp:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$3;

.field public final fingerprintSuccess:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$4;

.field public final isEngaged:Lkotlinx/coroutines/flow/StateFlow;

.field public final isFingerprintAuthCurrentlyAllowed:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$1;

.field public final isFingerprintCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isLockedOut:Lkotlinx/coroutines/flow/Flow;

.field public final isRunning:Lkotlinx/coroutines/flow/Flow;

.field public final isSensorUnderDisplay:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->isRunning()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isRunning:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->isEngaged:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isEngaged:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->authenticationStatus:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->isLockedOut:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintFailure:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$1;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$2;

    invoke-direct {v2, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintError:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$2;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$3;

    invoke-direct {v2, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintHelp:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$3;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepositoryImpl;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$4;

    invoke-direct {v1, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintSuccess:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$4;

    iget-object p1, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->fingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$isFingerprintAuthCurrentlyAllowed$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$isFingerprintAuthCurrentlyAllowed$2;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$1;

    invoke-direct {p1, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isFingerprintAuthCurrentlyAllowed:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$1;

    check-cast p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$2;

    iget-object p2, p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$flatMapLatest$1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isFingerprintCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
