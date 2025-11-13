.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticationFlags:Lkotlinx/coroutines/flow/Flow;

.field public final faceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/Flow;

.field public final fingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/StateFlow;

.field public final isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final isFingerprintAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->authenticationFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->authenticationFlags:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->isFingerprintAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->fingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->faceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/Flow;

    new-instance p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor$fingerprintAndFaceEnrolledAndEnabled$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor$fingerprintAndFaceEnrolledAndEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
