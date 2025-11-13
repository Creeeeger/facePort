.class public abstract Landroidx/recyclerview/widget/SimpleItemAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSupportsChangeAnimations:Z


# virtual methods
.method public final animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    iget v2, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, p3

    move v4, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v4, p3

    move v5, p4

    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-ne p1, p2, :cond_1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p4

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v1, v4, v2

    int-to-float v1, v1

    sub-float/2addr v1, p0

    float-to-int v1, v1

    sub-int v6, v5, v3

    int-to-float v6, v6

    sub-float/2addr v6, p3

    float-to-int v6, v6

    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int p3, v1

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int p3, v6

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p1, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p2, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput v2, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    iput v3, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    iput v4, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iput v5, p3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAnimFlag:I

    and-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_2

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAnimFlag:I

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method
