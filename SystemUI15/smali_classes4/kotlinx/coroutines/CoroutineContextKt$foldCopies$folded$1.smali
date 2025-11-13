.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $isNewCoroutine:Z

.field final synthetic $leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    instance-of v0, p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    move-object v1, p2

    check-cast v1, Lcom/android/app/tracing/coroutines/TraceContextElement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/app/tracing/coroutines/TraceContextElement;->Key:Lcom/android/app/tracing/coroutines/TraceContextElement$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    if-eqz p0, :cond_2

    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    check-cast p2, Lcom/android/app/tracing/coroutines/TraceContextElement;

    new-instance p0, Lcom/android/app/tracing/coroutines/TraceContextElement;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceContextElement;->traceData:Lcom/android/app/tracing/coroutines/TraceData;

    if-eqz p2, :cond_1

    new-instance v2, Lcom/android/app/tracing/coroutines/TraceData;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/app/tracing/coroutines/TraceContextElement;-><init>(Lcom/android/app/tracing/coroutines/TraceData;)V

    goto :goto_0

    :cond_2
    move-object p0, p2

    check-cast p0, Lkotlinx/coroutines/CopyableThreadContextElement;

    :goto_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    check-cast p2, Lcom/android/app/tracing/coroutines/TraceContextElement;

    new-instance p0, Lcom/android/app/tracing/coroutines/TraceContextElement;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceContextElement;->traceData:Lcom/android/app/tracing/coroutines/TraceData;

    if-eqz p2, :cond_4

    new-instance v2, Lcom/android/app/tracing/coroutines/TraceData;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/app/tracing/coroutines/TraceContextElement;-><init>(Lcom/android/app/tracing/coroutines/TraceData;)V

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_1
    return-object p0
.end method
