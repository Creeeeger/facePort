.class public final Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final lightRevealEffect:Lkotlinx/coroutines/flow/Flow;

.field public final lightRevealScrimRepository:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;

.field public final powerInteractor:Ldagger/Lazy;

.field public final revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;

.field public final scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

.field public final transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$Companion;

    const-class v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/keyguard/logging/ScrimLogger;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/keyguard/logging/ScrimLogger;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealScrimRepository:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->powerInteractor:Ldagger/Lazy;

    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$listenForStartedKeyguardTransitionStep$1;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$listenForStartedKeyguardTransitionStep$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p3, p5, p5, p4, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    check-cast p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    iget-object p3, p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealEffect:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealEffect:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealAmount:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;

    return-void
.end method
