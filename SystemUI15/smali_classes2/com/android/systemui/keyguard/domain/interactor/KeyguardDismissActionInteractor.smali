.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dismissAction:Lkotlinx/coroutines/flow/StateFlow;

.field public final dismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;

.field public final executeDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$6;

.field public final finishedTransitionToGone:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$5;

.field public final onCancel:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$1;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final resetDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$7;

.field public final willAnimateDismissActionOnLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p0, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dismissAction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p5, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p4, p5, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filter$2;

    iget-object p4, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {p1, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$5;

    invoke-direct {p4, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;->dismissKeyguardRequestWithImmediateDismissAction:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor$special$$inlined$map$5;

    filled-new-array {p4, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filterNot$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$6;

    invoke-direct {p1, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filter$3;

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1, p0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filterNot$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$filterNot$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$7;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissActionInteractor$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method
