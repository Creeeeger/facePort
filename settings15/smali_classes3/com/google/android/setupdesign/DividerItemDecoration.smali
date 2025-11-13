.class public Lcom/google/android/setupdesign/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public divider:Landroid/graphics/drawable/Drawable;

.field public dividerCondition:I

.field public final dividerHeight:I

.field public dividerIntrinsicHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudDividerItemDecoration:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    iput-object v0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    iput v3, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/DividerItemDecoration;->shouldDrawDividerBelow$1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerHeight:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/google/android/setupdesign/DividerItemDecoration;->shouldDrawDividerBelow$1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    add-int v7, v5, v2

    invoke-virtual {v6, v3, v5, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final shouldDrawDividerBelow$1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    if-nez p1, :cond_1

    return v2

    :cond_0
    iget p1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerCondition:I

    if-eq p1, v2, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method
