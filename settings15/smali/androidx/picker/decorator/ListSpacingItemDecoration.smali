.class public final Landroidx/picker/decorator/ListSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final spacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->spacing:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    instance-of v0, p4, Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v0, :cond_0

    check-cast p4, Landroidx/picker/adapter/HeaderFooterAdapter;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    instance-of p3, p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    if-nez p3, :cond_2

    return-void

    :cond_2
    check-cast p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    iget-object p2, p2, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableType:Landroidx/picker/features/composable/ComposableType;

    sget-object p3, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxExpander:Landroidx/picker/features/composable/ComposableTypeSet;

    invoke-static {p2, p3}, Landroidx/picker/features/composable/ComposableType$Companion;->isSame$picker_app_release(Landroidx/picker/features/composable/ComposableType;Landroidx/picker/features/composable/ComposableType;)Z

    move-result p3

    if-nez p3, :cond_8

    sget-object p3, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    invoke-static {p2, p3}, Landroidx/picker/features/composable/ComposableType$Companion;->isSame$picker_app_release(Landroidx/picker/features/composable/ComposableType;Landroidx/picker/features/composable/ComposableType;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p4, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iget-object p2, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    const-string p3, "getDataSetFiltered(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/picker/model/viewdata/ViewData;

    instance-of p3, p3, Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz p3, :cond_5

    iget-object p2, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/picker/helper/ContextHelperKt;->isRTL(Landroid/content/Context;)Z

    move-result p2

    iget p0, p0, Landroidx/picker/decorator/ListSpacingItemDecoration;->spacing:I

    if-eqz p2, :cond_6

    invoke-virtual {p1, p4, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    :goto_2
    return-void
.end method
