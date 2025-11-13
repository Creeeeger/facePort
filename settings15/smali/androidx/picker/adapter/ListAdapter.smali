.class public final Landroidx/picker/adapter/ListAdapter;
.super Landroidx/picker/adapter/AbsAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final TYPE_GROUP_HEADER:I

.field public final mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

.field public final mComposableViewTypeRange:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker/features/composable/ComposableStrategy;)V
    .locals 1

    sget-object v0, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {p0, p1, v0}, Landroidx/picker/adapter/AbsAdapter;-><init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V

    new-instance p1, Landroidx/picker/features/composable/ComposableFactory;

    invoke-direct {p1, p2}, Landroidx/picker/features/composable/ComposableFactory;-><init>(Landroidx/picker/features/composable/ComposableStrategy;)V

    iput-object p1, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    iget-object p1, p1, Landroidx/picker/features/composable/ComposableFactory;->viewTypeRange:Lkotlin/ranges/IntRange;

    iput-object p1, p0, Landroidx/picker/adapter/ListAdapter;->mComposableViewTypeRange:Lkotlin/ranges/IntRange;

    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 10

    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "viewData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker/features/composable/ComposableFactory;->composableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-interface {v1, p1}, Landroidx/picker/features/composable/ComposableStrategy;->selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Landroidx/picker/features/composable/ComposableFactory;->converter:Landroidx/picker/features/composable/ComposableBitConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByComposableType:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableType;->getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7, v8, v9}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz v7, :cond_1

    iget-object v8, v0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    aget-object v8, v8, v6

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v4

    if-nez v7, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    iget-object v8, v0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    aget-object v6, v8, v6

    iget v6, v6, Lkotlin/ranges/IntProgression;->first:I

    shl-int v6, v7, v6

    :goto_1
    or-int/2addr v5, v6

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByComposableType:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v5

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    instance-of p1, p1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    if-eqz p1, :cond_6

    iget p0, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    return p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableViewTypeRange:Lkotlin/ranges/IntRange;

    invoke-virtual {v0, p2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    invoke-virtual {v0, p1, p2}, Landroidx/picker/features/composable/ComposableFactory;->inflateComposableView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/adapter/ListAdapter;->mComposableFactory:Landroidx/picker/features/composable/ComposableFactory;

    invoke-virtual {p0, p2}, Landroidx/picker/features/composable/ComposableFactory;->getComposableType(I)Landroidx/picker/features/composable/ComposableType;

    move-result-object p0

    new-instance p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    invoke-direct {p2, p1, p0}, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;-><init>(Landroid/view/View;Landroidx/picker/features/composable/ComposableType;)V

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/picker/adapter/ListAdapter;->TYPE_GROUP_HEADER:I

    if-ne p2, p0, :cond_1

    new-instance p2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    const p0, 0x7f0d04fc

    invoke-static {p1, p0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    sget-object p1, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {p2, p0, p1}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;-><init>(Landroid/view/View;Landroidx/picker/model/GroupTitleStyleData;)V

    :goto_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
