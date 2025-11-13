.class public final Lcom/android/app/tracing/coroutines/TraceData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final openSliceCount:Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;

.field public final slices:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/tracing/coroutines/TraceData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/app/tracing/coroutines/TraceData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayDeque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;

    invoke-direct {p1}, Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/android/app/tracing/coroutines/TraceData;->openSliceCount:Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayDeque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public final beginSpan(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/app/tracing/coroutines/TraceData;->openSliceCount:Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;

    iget-object p0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/app/tracing/coroutines/TraceData;

    iget-object p0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/app/tracing/coroutines/TraceData;-><init>(Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method public final endSpan()V
    .locals 1

    iget-object v0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/app/tracing/coroutines/TraceData;->openSliceCount:Lcom/android/app/tracing/coroutines/TraceCountThreadLocal;

    iget-object p0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lkotlin/text/HexExtensionsKt;->toHexString$default(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/app/tracing/coroutines/TraceData;->slices:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    const-string v1, "TraceData@"

    const-string v2, "-size="

    invoke-static {p0, v1, v0, v2}, Lcom/android/app/tracing/coroutines/TraceData$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
