.class public final Landroidx/picker/decorator/RoundedCornerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public final mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

.field public final roundedCornerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance p2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    new-instance p2, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    new-instance p3, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {p3, p2}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p3}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    move-object v0, p3

    check-cast v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    instance-of v2, v1, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    iget-object v3, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v4, v2, Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v4, :cond_2

    check-cast v2, Landroidx/picker/adapter/HeaderFooterAdapter;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v4

    invoke-virtual {v2}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v5

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-lez v4, :cond_3

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    return-void
.end method
