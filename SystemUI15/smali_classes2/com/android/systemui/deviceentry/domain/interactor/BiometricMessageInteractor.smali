.class public final Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

.field public final coExFaceAcquisitionMsgIdsToShow:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$3;

.field public final coExFaceAcquisitionMsgIdsToShowDefault:Ljava/util/Set;

.field public final coExFaceAcquisitionMsgIdsToShowUnfolded:Ljava/util/Set;

.field public final faceError:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$2;

.field public final faceErrorMessage:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$6;

.field public final faceFailure:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$3;

.field public final faceFailureMessage:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$5;

.field public final faceHelp:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$1;

.field public final faceHelpMessage:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$4;

.field public final faceMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final filterConditionForFaceHelpMessages:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final fingerprintErrorMessage:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$1;

.field public final fingerprintFailMessage:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final fingerprintHelpMessage:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$2;

.field public final fingerprintMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;Lcom/android/systemui/keyguard/domain/interactor/DevicePostureInteractor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->resources:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

    invoke-interface {p4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-interface {p4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-interface {p4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$3;

    invoke-direct {v0, p4}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterIsInstance$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const p4, 0x7f03003d

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->coExFaceAcquisitionMsgIdsToShowDefault:Ljava/util/Set;

    const p4, 0x7f03003e

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->coExFaceAcquisitionMsgIdsToShowUnfolded:Ljava/util/Set;

    iget-object p1, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintError:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$2;

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$1;

    invoke-direct {p4, p1, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    iget-object p1, p5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->fingerprintAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$fingerprintErrorMessage$3;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$fingerprintErrorMessage$3;

    invoke-static {p4, p1, v3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance v3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$1;

    invoke-direct {v3, p4}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$1;

    invoke-direct {p4, v3}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$fingerprintHelpMessage$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$fingerprintHelpMessage$2;

    iget-object v4, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintHelp:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$3;

    invoke-static {v4, p1, v3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$2;

    invoke-direct {v3, p1}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$2;

    invoke-direct {p1, v3}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    iget-object p2, p3, Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;->isUdfps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$3;

    iget-object p7, p7, Lcom/android/systemui/keyguard/domain/interactor/DevicePostureInteractor;->posture:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p3, p7, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->coExFaceAcquisitionMsgIdsToShow:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$3;

    filled-new-array {p4, p2, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->fingerprintMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    sget-object p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$filterConditionForFaceHelpMessages$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$filterConditionForFaceHelpMessages$2;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->isFingerprintAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p4, p5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->faceAuthCurrentlyAllowed:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p2, p3, p4, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p1, v4, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$2;

    invoke-direct {p2, v1, p6}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;)V

    sget-object p3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$faceHelpMessage$3;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$faceHelpMessage$3;

    invoke-static {p2, p1, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$4;

    invoke-direct {p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0, p4}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$4;

    invoke-direct {p3, p2}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$5;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$3;

    invoke-direct {p3, v2, p0}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filterNot$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;)V

    sget-object p5, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$faceErrorMessage$3;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$faceErrorMessage$3;

    invoke-static {p3, p4, p5}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$5;

    invoke-direct {p4, p3}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$filter$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$6;

    invoke-direct {p3, p4, p6}, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;)V

    filled-new-array {p1, p2, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->faceMessage:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    return-void
.end method
