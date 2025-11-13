.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final deviceUnlockSource:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final deviceUnlockStatus:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object p6, p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->fingerprintSuccess:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$filterIsInstance$4;

    new-instance p7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$1;

    invoke-direct {p7, p6}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-interface {p5}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->isAuthenticated()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    new-instance p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$1;

    invoke-direct {p6, p5}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$2;

    invoke-direct {p5, p6, p3}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;)V

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$2;

    iget-object p4, p4, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isTrusted:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p3, p4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$3;

    invoke-direct {p4, p3}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p3, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->onAuthenticationResult:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$3;

    invoke-direct {p6, p3}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$4;

    invoke-direct {p3, p6}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {p7, p5, p4, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->deviceUnlockSource:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$flatMapLatest$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;)V

    iget-object p2, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance p5, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;

    const/4 p6, 0x0

    invoke-direct {p5, p6, p4}, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;-><init>(ZLcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource;)V

    invoke-static {p2, p1, p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->deviceUnlockStatus:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
