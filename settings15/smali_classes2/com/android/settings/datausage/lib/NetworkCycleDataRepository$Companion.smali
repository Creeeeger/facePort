.class public abstract Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static asFourWeeks(Landroid/util/Range;)Ljava/util/List;
    .locals 9

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    const-string v1, "getLower(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    const-string v2, "getUpper(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide v5, 0x90320fffL

    sub-long v5, v0, v5

    new-instance p0, Lkotlin/ranges/LongProgression;

    const-wide/16 v7, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lkotlin/ranges/LongProgression;-><init>(JJJ)V

    const-wide v0, 0x90321000L

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lkotlin/ranges/LongProgressionIterator;

    iget-boolean v1, v0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-nez v1, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lkotlin/ranges/LongProgressionIterator;

    invoke-virtual {p0}, Lkotlin/ranges/LongProgressionIterator;->nextLong()J

    move-result-wide v2

    :goto_0
    iget-boolean v4, v0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/LongProgressionIterator;->nextLong()J

    move-result-wide v4

    new-instance v6, Landroid/util/Range;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public static getCycles(Landroid/net/NetworkPolicy;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "cycleIterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion$getCycles$1;->INSTANCE:Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion$getCycles$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
