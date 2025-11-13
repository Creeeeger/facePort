.class public final Lcom/android/systemui/flags/NotOccludedCondition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/flags/ConditionalRestarter$Condition;


# instance fields
.field public final keyguardTransitionInteractorLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/NotOccludedCondition;->keyguardTransitionInteractorLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final getCanRestartNow()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/flags/NotOccludedCondition;->keyguardTransitionInteractorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/flags/NotOccludedCondition$special$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/flags/NotOccludedCondition$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object v0
.end method
