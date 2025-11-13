.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final biometricAuthenticatedRequestDismissKeyguard:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$1;

.field public final dismissKeyguardRequestWithImmediateDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$5;

.field public final dismissKeyguardRequestWithoutImmediateDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$6;

.field public final keyguardDone:Lkotlinx/coroutines/flow/SharedFlow;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final onTrustGrantedRequestDismissKeyguard:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$2;

.field public final primaryAuthenticated:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$3;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final userRequestedBouncerWhenAlreadyAuthenticated:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$4;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object p6, p3, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$1;

    invoke-direct {v0, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->getTrustAgentRequestingToDismissKeyguard()Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$4;

    move-result-object p1

    sget-object p6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$onTrustGrantedRequestDismissKeyguard$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$onTrustGrantedRequestDismissKeyguard$2;

    iget-object p4, p4, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p5, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p3, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, p4, p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$onTrustGrantedRequestDismissKeyguard$3;

    sget-object p6, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    invoke-direct {p5, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$onTrustGrantedRequestDismissKeyguard$3;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p4, p5}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1;

    invoke-direct {p4, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$2;

    invoke-direct {p1, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$2;

    iget-object p5, p3, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticatedPrimaryAuth:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {p4, p5, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;)V

    new-instance p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$3;

    invoke-direct {p5, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$3;

    iget-object p3, p3, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->userRequestedBouncerWhenAlreadyAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p4, p3, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;)V

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$4;

    invoke-direct {p3, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p4, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardDone:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    filled-new-array {v0, p1, p5, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iget-object p2, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dismissAction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$4;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$5;

    invoke-direct {p3, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;->dismissKeyguardRequestWithImmediateDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$5;

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$5;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$filter$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method
