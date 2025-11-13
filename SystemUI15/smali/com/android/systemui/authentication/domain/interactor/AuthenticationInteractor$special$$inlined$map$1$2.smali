.class public final Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->Z$0:Z

    iget-object p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iget-object p2, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    iput-object p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->Z$0:Z

    iput v4, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->label:I

    check-cast p2, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    invoke-virtual {p2, v0}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getPinLength(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, v2

    move-object v2, p0

    move p0, p1

    move-object p1, v6

    :goto_1
    move-object v4, p2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-eqz p0, :cond_5

    iget-object p0, v2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iget-object p0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    check-cast p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iget p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->hintedPinLength:I

    if-ne v4, p0, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v5

    :goto_2
    iput-object v5, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1$2$1;->label:I

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
