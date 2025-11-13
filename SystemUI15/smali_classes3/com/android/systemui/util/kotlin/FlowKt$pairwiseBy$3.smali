.class final Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $getInitialValue:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $this_pairwiseBy:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$this_pairwiseBy:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$transform:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$this_pairwiseBy:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$transform:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    iput-object v4, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$this_pairwiseBy:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;

    iget-object v5, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$transform:Lkotlin/jvm/functions/Function3;

    invoke-direct {v1, v4, v5, v3}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
