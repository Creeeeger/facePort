.class final Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lcom/android/systemui/util/ui/AnimatableEvent;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/util/ui/AnimatableEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/util/ui/AnimatableEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Lcom/android/systemui/util/ui/AnimatableEvent<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;

    invoke-direct {p0, p3}, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v4, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/util/ui/AnimatableEvent;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatableEvent;->component1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatableEvent;->component2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    new-instance v8, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1$1;

    invoke-direct {v8, v1}, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-direct {v7, v6, v8}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->label:I

    invoke-interface {p1, v7, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, v6

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->label:I

    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, p1

    move-object v1, v4

    :goto_1
    move-object v6, v1

    move-object p1, v3

    :cond_6
    new-instance v1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-direct {v1, v6}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
