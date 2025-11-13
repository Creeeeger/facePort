.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final biometricMode:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final faceOnly:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$special$$inlined$map$1;

.field public final faceOnlyFaceFailure:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$biometricMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$biometricMode$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, v3, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$special$$inlined$map$1;

    invoke-direct {p1, v2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor;->faceOnlyFaceFailure:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
