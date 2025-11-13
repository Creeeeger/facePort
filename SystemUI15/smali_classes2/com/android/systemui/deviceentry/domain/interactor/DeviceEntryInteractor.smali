.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

.field public final biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

.field public final canSwipeToEnter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final deviceEntryRestrictionReason:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

.field public final faceEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final faceOrFingerprintOrTrustEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final fingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

.field public final fingerprintEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDeviceEntered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isUnlocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final systemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public final trustAgentEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final trustInteractor:Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iput-object p6, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->fingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iput-object p7, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

    iput-object p8, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->trustInteractor:Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;

    iput-object p9, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

    iput-object p10, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->systemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    iget-object p6, p9, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->deviceUnlockStatus:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p9, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$map$1;

    invoke-direct {p9, p6}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p10, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p11, 0x3

    invoke-static {p10, p11}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p10

    iget-object p11, p6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p11

    check-cast p11, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;

    iget-boolean p11, p11, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;->isUnlocked:Z

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p11

    invoke-static {p9, p1, p10, p11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p9

    iput-object p9, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isUnlocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p9, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$filter$1;

    invoke-direct {p9, p4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isDeviceEntered$2;

    const/4 p10, 0x0

    invoke-direct {p4, p0, p10}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isDeviceEntered$2;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p9, p4}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    const/4 p9, -0x1

    invoke-static {p4, p9}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    sget-object p9, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p4, p1, p9, p11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isDeviceEntered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p11, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$map$2;

    iget-object p3, p3, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p11, p3, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;)V

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$canSwipeToEnter$2;

    invoke-direct {p3, p10}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$canSwipeToEnter$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p11, p6, p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    invoke-static {p3, p1, p9, p10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->canSwipeToEnter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->isFaceAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p3, p7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->isFingerprintAuthEnrolledAndEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p4, p8, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isEnrolledAndEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;

    invoke-static {p1, p3, p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p3, p10, p0, p5}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast p2, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final isAuthenticationRequired(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;

    iget v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->deviceUnlockStatus:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;

    iget-boolean p1, p1, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;->isUnlocked:Z

    if-nez p1, :cond_4

    iput v3, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$isAuthenticationRequired$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->getAuthenticationMethod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    iget-boolean p0, p1, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;->isSecure:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
