.class public final Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;
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

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;

    iget v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$1:I

    iget p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$0:I

    iget-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move p1, p0

    move-object p0, v2

    move-object v2, v7

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iget-object p2, p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    iput-object p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$0:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$0:I

    iput v5, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    check-cast p2, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    invoke-virtual {p2, v0}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getMaxFailedUnlockAttemptsForWipe(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-nez p2, :cond_6

    :goto_2
    move-object v4, v6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    sub-int/2addr p2, p1

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v5, 0x5

    if-lt p2, v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iput-object v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$0:I

    iput p2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->I$1:I

    iput v4, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    invoke-static {p0, v0}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->access$getWipeTarget(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    move v7, p2

    move-object p2, p0

    move p0, v7

    :goto_3
    check-cast p2, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget;

    new-instance v4, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel;

    invoke-direct {v4, p2, p1, p0}, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel;-><init>(Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget;II)V

    :goto_4
    iput-object v6, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
