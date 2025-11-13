.class public final Lcom/android/systemui/util/kotlin/BooleanFlowOperators;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    invoke-direct {v0}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;-><init>()V

    sput-object v0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final all(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlinx/coroutines/flow/Flow;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$all$$inlined$combine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$all$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final all([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final varargs allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;-><init>([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->all(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final any(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlinx/coroutines/flow/Flow;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final any([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final varargs anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;-><init>([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->any(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final none(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlinx/coroutines/flow/Flow;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->any(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final none([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->noneOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final varargs noneOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$not$$inlined$map$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$not$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object p0
.end method
