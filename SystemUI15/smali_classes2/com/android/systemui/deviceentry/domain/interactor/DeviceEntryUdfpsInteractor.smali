.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isListeningForUdfps:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isUdfpsEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

.field public final udfpsLocation:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->isUdfps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    check-cast p3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    new-instance v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$isUdfpsEnrolledAndEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$isUdfpsEnrolledAndEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v3, v0, p3, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p3, v2, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFingerprintAuthRepository;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isListeningForUdfps:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p2, v2, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->udfpsLocation:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
