.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final lastPowerButtonWakeup:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final logger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

.field public final playErrorHapticForBiometricFailure:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$3;

.field public final recentPowerButtonPressThresholdMs:J

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/keyevent/domain/interactor/KeyEventInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/keyguard/logging/BiometricUnlockLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p9, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->logger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    check-cast p4, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object p4, p4, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p5, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object p5, p5, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isFingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p8, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$powerButtonSideFpsEnrolled$1;

    const/4 p9, 0x0

    invoke-direct {p8, p9}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$powerButtonSideFpsEnrolled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, p5, p8}, Lkotlinx/coroutines/flow/FlowKt;->combineTransform(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iget-object p5, p6, Lcom/android/systemui/keyevent/domain/interactor/KeyEventInteractor;->isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;

    iget-object p6, p7, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$1;

    invoke-direct {p7, p6}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$1;

    invoke-direct {p6, p7, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;)V

    new-instance p7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;

    invoke-direct {p7, p0, p9}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p8, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p8, p7, p6}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;->deviceEntryFromBiometricSource:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    sget-object p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$playSuccessHaptic$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$playSuccessHaptic$2;

    invoke-static {p4, p5, p8, p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p6

    invoke-static {p1, p6}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2;

    invoke-direct {p6, p1, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$2;

    invoke-direct {p1, p6}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintFailure:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$1;

    iget-object p2, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricAuthInteractor;->faceOnlyFaceFailure:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    filled-new-array {p1, p2}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$playErrorHaptic$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$playErrorHaptic$2;

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, p4, p5, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$3;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$4;

    invoke-direct {p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-wide/16 p1, 0x190

    iput-wide p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->recentPowerButtonPressThresholdMs:J

    return-void
.end method
