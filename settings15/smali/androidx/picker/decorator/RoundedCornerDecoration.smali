.class public final Landroidx/picker/decorator/RoundedCornerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public final mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

.field public final roundedCornerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance p2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    new-instance p2, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    iput-object p2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, p3

    :goto_1
    if-eqz v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    instance-of v3, v2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    iget-object v4, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mSubHeaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v4, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v5, v3, Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v5, :cond_2

    check-cast v3, Landroidx/picker/adapter/HeaderFooterAdapter;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v5

    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v6

    if-lez v5, :cond_3

    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v4, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_3
    if-lez v6, :cond_4

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v4, v0, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroidx/picker/decorator/RoundedCornerDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v2, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_5
    :goto_3
    move v0, v1

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_7
    return-void
.end method
