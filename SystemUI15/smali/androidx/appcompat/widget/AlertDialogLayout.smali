.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static resolveMinimumHeight(Landroid/view/View;)I
    .locals 3

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v8, v7, 0x70

    const v9, 0x800007

    and-int/2addr v7, v9

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v8, v9, :cond_1

    const/16 v9, 0x50

    if-eq v8, v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    add-int v8, v8, p5

    sub-int v8, v8, p3

    sub-int v5, v8, v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    sub-int v9, p5, p3

    sub-int/2addr v9, v5

    div-int/2addr v9, v10

    add-int v5, v9, v8

    :goto_0
    iget-object v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-nez v8, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    :goto_1
    if-ge v9, v6, :cond_8

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v15, :cond_3

    move v15, v7

    :cond_3
    sget-object v16, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    invoke-static {v15, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    if-eq v10, v1, :cond_5

    const/4 v15, 0x5

    if-eq v10, v15, :cond_4

    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v2

    goto :goto_2

    :cond_4
    sub-int v10, v4, v12

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    goto :goto_2

    :cond_5
    const/4 v10, 0x2

    invoke-static {v3, v12, v10, v2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v15

    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v10

    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v10, v15, v10

    :goto_2
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/2addr v5, v8

    :cond_6
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v15

    add-int/2addr v12, v10

    add-int v15, v5, v13

    invoke-virtual {v11, v10, v5, v12, v15}, Landroid/view/View;->layout(IIII)V

    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v10

    add-int/2addr v13, v5

    move v5, v13

    :cond_7
    add-int/2addr v9, v1

    const/4 v10, 0x2

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move v5, v2

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v7, :cond_6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v8

    const v10, 0x7f0a0d59

    if-ne v8, v10, :cond_1

    move-object v1, v9

    goto :goto_1

    :cond_1
    const v10, 0x7f0a0220

    if-ne v8, v10, :cond_2

    move-object v3, v9

    goto :goto_1

    :cond_2
    const v10, 0x7f0a02d3

    if-eq v8, v10, :cond_3

    const v10, 0x7f0a0324

    if-ne v8, v10, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    :cond_4
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    goto/16 :goto_8

    :cond_5
    move-object v4, v9

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v12

    add-int/2addr v12, v11

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v12, v11

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-static {v3}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v13, v11

    add-int/2addr v12, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v1, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    goto :goto_3

    :cond_8
    move v11, v2

    move v13, v11

    :goto_3
    if-eqz v4, :cond_a

    if-nez v5, :cond_9

    move v14, v2

    goto :goto_4

    :cond_9
    sub-int v14, v9, v12

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    :goto_4
    invoke-virtual {v4, v0, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v1, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    goto :goto_5

    :cond_a
    move v14, v2

    :goto_5
    sub-int/2addr v9, v12

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v3, :cond_c

    sub-int/2addr v12, v11

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-lez v13, :cond_b

    sub-int/2addr v9, v13

    add-int/2addr v11, v13

    :cond_b
    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v0, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v12, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    :cond_c
    if-eqz v4, :cond_d

    if-lez v9, :cond_d

    sub-int/2addr v12, v14

    add-int/2addr v14, v9

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v12, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    :cond_d
    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v7, :cond_f

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    invoke-static {v5, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    move/from16 v9, p2

    invoke-static {v12, v9, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eq v10, v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v11, v2

    :goto_7
    if-ge v11, v7, :cond_11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    return-void
.end method
