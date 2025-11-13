.class public final Landroidx/picker/decorator/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Landroidx/picker/decorator/GridSpacingItemDecoration;->spacing:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    if-nez v1, :cond_5

    instance-of v0, v0, Landroidx/picker/adapter/viewholder/FrameViewHolder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_3

    return-void

    :cond_3
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_4

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget p2, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    goto :goto_0

    :cond_4
    rem-int p2, p4, p3

    :goto_0
    iget p0, p0, Landroidx/picker/decorator/GridSpacingItemDecoration;->spacing:I

    mul-int p4, p2, p0

    div-int/2addr p4, p3

    sub-int p4, p0, p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p0

    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_1
    return-void
.end method
