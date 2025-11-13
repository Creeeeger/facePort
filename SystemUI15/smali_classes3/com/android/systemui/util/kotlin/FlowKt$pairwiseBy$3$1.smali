.class final Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector;"
        }
    .end annotation
.end field

.field final synthetic $previousValue:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
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


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$transform:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$previousValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;

    iget v1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;-><init>(Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$1:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v5, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$previousValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->label:I

    invoke-interface {v2, v5, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, v2

    move-object v2, p0

    move-object p0, p2

    move-object p2, v6

    :goto_1
    iput-object v2, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1$emit$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, p1

    move-object p1, v2

    :goto_2
    iget-object p1, p1, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3$1;->$previousValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
