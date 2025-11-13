.class public final Landroidx/picker/adapter/viewholder/AppListItemViewHolder;
.super Landroidx/picker/adapter/viewholder/PickerViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final composableItemViewHolderList:Ljava/util/List;

.field public final composableType:Landroidx/picker/features/composable/ComposableType;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/picker/features/composable/ComposableType;)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    const v0, 0x7f0a08ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0a07a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/ViewStub;

    const v2, 0x7f0a104b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/view/ViewStub;

    const v3, 0x7f0a1159

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/ViewStub;

    invoke-interface {p2}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Landroidx/picker/features/composable/ComposableType;->getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Landroidx/picker/features/composable/ComposableType;->getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v3, v0, p2}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableFrame;->getViewHolderClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-interface {v1}, Landroidx/picker/features/composable/ComposableFrame;->getLayoutResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/features/composable/ComposableViewHolder;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p2, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/features/composable/ComposableViewHolder;

    invoke-virtual {v0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/features/composable/ComposableViewHolder;

    invoke-virtual {v1, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/picker/features/composable/ComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onViewRecycled()V
    .locals 4

    invoke-super {p0}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->onViewRecycled()V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/features/composable/ComposableViewHolder;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
