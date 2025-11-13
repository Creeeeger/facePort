.class final Landroidx/room/AmbiguousColumnResolver$resolve$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/AmbiguousColumnResolver$Solution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/AmbiguousColumnResolver$Solution;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/util/List;

    sget-object v0, Landroidx/room/AmbiguousColumnResolver$Solution;->Companion:Landroidx/room/AmbiguousColumnResolver$Solution$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v6, v4, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    iget v7, v6, Lkotlin/ranges/IntProgression;->last:I

    iget v6, v6, Lkotlin/ranges/IntProgression;->first:I

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    iget-object v4, v4, Landroidx/room/AmbiguousColumnResolver$Match;->resultIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v7, v4

    add-int/2addr v3, v7

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v4, v4, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    iget v4, v4, Lkotlin/ranges/IntProgression;->first:I

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v6, v6, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    iget v6, v6, Lkotlin/ranges/IntProgression;->first:I

    if-le v4, v6, :cond_1

    move v4, v6

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v6, v6, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    iget v6, v6, Lkotlin/ranges/IntProgression;->last:I

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v7, v7, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    iget v7, v7, Lkotlin/ranges/IntProgression;->last:I

    if-ge v6, v7, :cond_3

    move v6, v7

    goto :goto_2

    :cond_4
    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-direct {v1, v4, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    move v4, v2

    :cond_6
    :goto_3
    iget-boolean v6, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v6, :cond_a

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v2

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v9, v9, Landroidx/room/AmbiguousColumnResolver$Match;->resultRange:Lkotlin/ranges/IntRange;

    invoke-virtual {v9, v6}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    :cond_8
    if-le v8, v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_a
    move v2, v4

    :goto_4
    new-instance v0, Landroidx/room/AmbiguousColumnResolver$Solution;

    invoke-direct {v0, p1, v3, v2}, Landroidx/room/AmbiguousColumnResolver$Solution;-><init>(Ljava/util/List;II)V

    iget-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/room/AmbiguousColumnResolver$Solution;

    iget v1, v0, Landroidx/room/AmbiguousColumnResolver$Solution;->overlaps:I

    iget v2, p1, Landroidx/room/AmbiguousColumnResolver$Solution;->overlaps:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    iget v1, v0, Landroidx/room/AmbiguousColumnResolver$Solution;->coverageOffset:I

    iget p1, p1, Landroidx/room/AmbiguousColumnResolver$Solution;->coverageOffset:I

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    :goto_5
    if-gez v1, :cond_c

    iget-object p0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
