.class public abstract Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1

    sget-object v0, Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1;->INSTANCE:Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2;->INSTANCE:Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    return-object p0
.end method

.method public static final set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1

    const v0, 0x7f0a0e25

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
