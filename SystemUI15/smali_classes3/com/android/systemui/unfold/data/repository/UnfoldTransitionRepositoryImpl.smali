.class public final Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;


# instance fields
.field public final unfoldProgressProvider:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;->unfoldProgressProvider:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final getTransitionStatus()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;->unfoldProgressProvider:Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    return-object p0

    :cond_0
    sget-object v1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v2, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl$transitionStatus$1;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
