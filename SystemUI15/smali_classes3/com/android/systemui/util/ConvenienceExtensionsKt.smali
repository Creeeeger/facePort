.class public final Lcom/android/systemui/util/ConvenienceExtensionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static final getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public static final indentIfPossible(Ljava/io/PrintWriter;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    instance-of v0, p0, Landroid/util/IndentingPrintWriter;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public static final takeUntil(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method
