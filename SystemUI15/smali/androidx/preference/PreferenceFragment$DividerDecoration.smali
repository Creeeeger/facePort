.class public final Landroidx/preference/PreferenceFragment$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowDividerAfterLastItem:Z

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    if-ge v2, p3, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    instance-of v6, v5, Landroidx/preference/PreferenceViewHolder;

    if-eqz v6, :cond_0

    check-cast v5, Landroidx/preference/PreferenceViewHolder;

    iget v6, v5, Landroidx/preference/PreferenceViewHolder;->mDividerStartOffset:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v7, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    instance-of v9, v7, Landroidx/preference/PreferenceViewHolder;

    if-eqz v9, :cond_1

    check-cast v7, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v7, v7, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    instance-of v9, v7, Landroidx/preference/PreferenceViewHolder;

    if-eqz v9, :cond_1

    check-cast v7, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v7, v7, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    if-eqz v7, :cond_1

    move v7, v11

    goto :goto_2

    :cond_1
    move v7, v1

    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    iget-object v7, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v9, v8

    invoke-virtual {v7, v6, v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v6, v3, Landroidx/preference/PreferenceFragment;->mIsRoundedCorner:Z

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    iget-boolean v6, v5, Landroidx/preference/PreferenceViewHolder;->mDrawBackground:Z

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v6, v5, Landroidx/preference/PreferenceViewHolder;->mSubheaderRound:Z

    if-eqz v6, :cond_5

    iget-object v6, v3, Landroidx/preference/PreferenceFragment;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    iget v5, v5, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, v3, Landroidx/preference/PreferenceFragment;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v3, v4, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    iget-object v6, v3, Landroidx/preference/PreferenceFragment;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget v5, v5, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, v3, Landroidx/preference/PreferenceFragment;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean p0, v3, Landroidx/preference/PreferenceFragment;->mIsRoundedCorner:Z

    if-eqz p0, :cond_8

    iget-object p0, v3, Landroidx/preference/PreferenceFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget p2, v3, Landroidx/preference/PreferenceFragment;->mLeft:I

    iget p3, v3, Landroidx/preference/PreferenceFragment;->mTop:I

    iget v0, v3, Landroidx/preference/PreferenceFragment;->mRight:I

    iget v1, v3, Landroidx/preference/PreferenceFragment;->mBottom:I

    invoke-static {p2, p3, v0, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method
