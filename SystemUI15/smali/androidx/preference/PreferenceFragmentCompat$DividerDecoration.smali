.class public final Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowDividerAfterLastItem:Z

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    if-ge v7, v3, :cond_c

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    instance-of v11, v10, Landroidx/preference/PreferenceViewHolder;

    if-eqz v11, :cond_0

    check-cast v10, Landroidx/preference/PreferenceViewHolder;

    iget v11, v10, Landroidx/preference/PreferenceViewHolder;->mDividerStartOffset:I

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move v12, v13

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v14

    iget-object v14, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_7

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    instance-of v6, v14, Landroidx/preference/PreferenceViewHolder;

    if-eqz v6, :cond_3

    check-cast v14, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v6, v14, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v17, v3

    add-int/lit8 v3, v16, -0x1

    if-ge v14, v3, :cond_4

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v6, v3, Landroidx/preference/PreferenceViewHolder;

    if-eqz v6, :cond_2

    check-cast v3, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v3, v3, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    move v6, v13

    goto :goto_4

    :cond_3
    move/from16 v17, v3

    const/4 v6, 0x0

    :cond_4
    :goto_4
    if-eqz v6, :cond_8

    iget v3, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    add-int/2addr v3, v15

    if-eqz v12, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    if-eqz v12, :cond_6

    neg-int v11, v11

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    iget-object v12, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int/2addr v6, v5

    add-int/2addr v11, v4

    invoke-virtual {v12, v6, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_7
    move/from16 v17, v3

    :cond_8
    :goto_7
    iget-boolean v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mIsRoundedCorner:Z

    if-eqz v3, :cond_b

    if-eqz v10, :cond_b

    iget-boolean v3, v10, Landroidx/preference/PreferenceViewHolder;->mDrawBackground:Z

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    iget-boolean v3, v10, Landroidx/preference/PreferenceViewHolder;->mSubheaderRound:Z

    if-eqz v3, :cond_a

    iget-object v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    iget v6, v10, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v3, v9, v1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_a
    iget-object v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget v6, v10, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v9, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v8, Landroidx/preference/PreferenceFragmentCompat;->mIsRoundedCorner:Z

    if-eqz v0, :cond_d

    iget-object v0, v8, Landroidx/preference/PreferenceFragmentCompat;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget v2, v8, Landroidx/preference/PreferenceFragmentCompat;->mLeft:I

    iget v3, v8, Landroidx/preference/PreferenceFragmentCompat;->mTop:I

    iget v4, v8, Landroidx/preference/PreferenceFragmentCompat;->mRight:I

    iget v5, v8, Landroidx/preference/PreferenceFragmentCompat;->mBottom:I

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget-object v2, v0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method
