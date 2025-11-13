.class public final Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;",
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "refferalItem",
        "Landroidx/picker/model/viewdata/CategoryViewData;",
        "toggle",
        "Landroid/widget/ImageView;",
        "bindAdapter",
        "",
        "adapter",
        "Landroidx/picker/adapter/AbsAdapter;",
        "bindData",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "checkCollapsed",
        "collapsed",
        "",
        "onViewRecycled",
        "itemView",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a07ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    const p0, 0x7f0a0f9d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bindAdapter$lambda$2$lambda$1(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V

    return-void

    :cond_0
    const-string p0, "refferalItem"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final checkCollapsed(Landroidx/picker/adapter/AbsAdapter;Z)V
    .locals 7

    iget-object v0, p1, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<@[EnhancedNullability] androidx.picker.model.viewdata.ViewData>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    const/4 v2, 0x0

    const-string v3, "refferalItem"

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "data[pos + 1]"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/picker/model/viewdata/ViewData;

    invoke-static {v4}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "data.removeAt(pos + 1)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1, v5, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/model/viewdata/ViewData;

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, p2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->refferalItem:Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private static final checkCollapsed$isCanBeCollapsed(Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 0

    instance-of p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    return p0
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;Landroidx/picker/adapter/AbsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    const-string/jumbo v0, "viewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableExpanderViewHolder;->toggle:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
