.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;
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


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    instance-of p0, p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    if-eqz p0, :cond_1

    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    check-cast p2, Lcom/android/app/tracing/coroutines/TraceContextElement;

    new-instance p0, Lcom/android/app/tracing/coroutines/TraceContextElement;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceContextElement;->traceData:Lcom/android/app/tracing/coroutines/TraceData;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/app/tracing/coroutines/TraceData;

    iget-object p2, p2, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/app/tracing/coroutines/TraceContextElement;-><init>(Lcom/android/app/tracing/coroutines/TraceData;)V

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_1
    return-object p0
.end method
