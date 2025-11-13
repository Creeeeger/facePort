.class public final Lcom/android/systemui/util/kotlin/DisposableHandles;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final handles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/DisposableHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs add([Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlinx/coroutines/DisposableHandle;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method public final plusAssign(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/DisposableHandles;->handles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs replaceAll([Lkotlinx/coroutines/DisposableHandle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/DisposableHandles;->dispose()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/DisposableHandle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/DisposableHandles;->add([Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method
