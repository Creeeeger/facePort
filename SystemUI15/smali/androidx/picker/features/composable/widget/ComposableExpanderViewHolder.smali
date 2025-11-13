.class public final Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

.field private final toggle:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$AlAdH80ZcIQT0Lb7SgSu2LEywmk(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->bindAdapter$lambda$2$lambda$1(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0520

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    const p0, 0x7f0a0cdd

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bindAdapter$lambda$2$lambda$1(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V

    return-void
.end method

.method private final checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V
    .locals 6

    iget-object v0, p1, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/viewdata/ViewData;

    invoke-static {v3}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_3

    :cond_3
    add-int/lit8 p2, v1, 0x1

    iget-object v3, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-nez v3, :cond_4

    move-object v3, v2

    :cond_4
    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, p2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/model/viewdata/ViewData;

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, p0

    :goto_2
    iget-object p0, v2, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 0

    instance-of p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    return p0
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    instance-of v0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/picker/model/viewdata/CategoryViewData;

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    iget-object p1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
