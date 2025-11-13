.class final Landroidx/picker/loader/CachedLoader$load$1;
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
.field final synthetic $key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/picker/loader/CachedLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/picker/loader/CachedLoader;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/loader/CachedLoader;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iput-object p2, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/picker/loader/CachedLoader$load$1;

    iget-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object p0, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p2}, Landroidx/picker/loader/CachedLoader$load$1;-><init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/loader/CachedLoader$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/picker/loader/CachedLoader$load$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/picker/loader/CachedLoader$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object p1, p1, Landroidx/picker/loader/CachedLoader;->cachedMap:Ljava/util/HashMap;

    iget-object v5, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object v4, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroidx/picker/loader/CachedLoader;->createValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v4, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object v5, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    iget-object v4, v4, Landroidx/picker/loader/CachedLoader;->cachedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
