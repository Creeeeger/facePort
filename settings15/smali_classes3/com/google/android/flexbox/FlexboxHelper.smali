.class public final Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChildrenFrozen:[Z

.field public final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field public mIndexToFlexLine:[I

.field public mMeasureSpecCache:[J

.field public mMeasuredSizeCache:[J


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method

.method public static constructFlexLinesForAlignContentCenter(ILjava/util/List;I)Ljava/util/List;
    .locals 3

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput p0, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    new-array p0, p0, [I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget v2, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    aput v2, p0, v0

    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 0

    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-nez p7, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    iput-object v9, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    const/4 v11, -0x1

    if-ne v4, v11, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v14

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v14

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v15

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v15

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v16

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v16

    :goto_4
    if-eqz v6, :cond_5

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v17

    goto :goto_5

    :cond_5
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v17

    :goto_5
    new-instance v12, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v12}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v11, p5

    iput v11, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v14, v15

    iput v14, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v15

    const/high16 v18, -0x80000000

    move/from16 p5, v13

    move/from16 v19, v18

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v11, v15, :cond_2f

    invoke-interface {v5, v11}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7

    add-int/lit8 v4, v15, -0x1

    if-ne v11, v4, :cond_6

    invoke-virtual {v12}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v9, v12, v11, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_6
    move/from16 v21, v1

    move/from16 v20, v13

    goto :goto_7

    :cond_7
    move/from16 v20, v13

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v21, v1

    const/16 v1, 0x8

    if-ne v13, v1, :cond_9

    iget v1, v12, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    iget v1, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v1, v4

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v1, v15, -0x1

    if-ne v11, v1, :cond_8

    invoke-virtual {v12}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v9, v12, v11, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_8
    :goto_7
    move/from16 v4, p4

    move/from16 v1, p6

    move/from16 v25, v7

    move-object v7, v9

    move/from16 v22, v15

    move/from16 v13, v20

    move/from16 v26, v21

    const/4 v9, 0x1

    move/from16 v15, p5

    goto/16 :goto_22

    :cond_9
    instance-of v1, v4, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_e

    move-object v1, v4

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    move/from16 v22, v15

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v15

    move-object/from16 v23, v9

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_a

    const/16 v24, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v24

    :goto_8
    if-nez v1, :cond_b

    const/4 v1, -0x1

    const/16 v25, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move/from16 v25, v1

    const/4 v1, -0x1

    :goto_9
    if-ne v15, v1, :cond_c

    move/from16 v15, v24

    :cond_c
    invoke-interface {v13, v15}, Lcom/google/android/flexbox/FlexItem;->setMinWidth(I)V

    if-ne v9, v1, :cond_d

    move/from16 v9, v25

    :cond_d
    invoke-interface {v13, v9}, Lcom/google/android/flexbox/FlexItem;->setMinHeight(I)V

    goto :goto_a

    :cond_e
    move-object/from16 v23, v9

    move/from16 v22, v15

    :goto_a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v9

    const/4 v13, 0x4

    if-ne v9, v13, :cond_f

    iget-object v9, v12, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v6, :cond_10

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v9

    goto :goto_b

    :cond_10
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v9

    :goto_b
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v13

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_11

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v7, v13, :cond_11

    int-to-float v9, v8

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v13

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    :cond_11
    if-eqz v6, :cond_12

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v13

    add-int/2addr v13, v14

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-interface {v5, v2, v15, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v9

    add-int v13, v16, v17

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v15

    add-int/2addr v15, v13

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v13

    add-int/2addr v13, v15

    add-int/2addr v13, v10

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v15

    invoke-interface {v5, v3, v13, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v13

    invoke-virtual {v4, v9, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v4, v11, v9, v13}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    goto :goto_c

    :cond_12
    add-int v13, v16, v17

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v15

    add-int/2addr v15, v13

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v13

    add-int/2addr v13, v15

    add-int/2addr v13, v10

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v15

    invoke-interface {v5, v3, v13, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v13

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v15

    add-int/2addr v15, v14

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v24

    add-int v15, v24, v15

    invoke-interface {v5, v2, v15, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v9

    invoke-virtual {v4, v13, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v4, v11, v13, v9}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    :goto_c
    invoke-interface {v5, v4, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    invoke-virtual {v0, v4, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    move/from16 v15, v21

    invoke-static {v15, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    iget v15, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v6, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    goto :goto_d

    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    :goto_d
    if-eqz v6, :cond_14

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v24

    goto :goto_e

    :cond_14
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v24

    :goto_e
    add-int v21, v21, v24

    if-eqz v6, :cond_15

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v24

    goto :goto_f

    :cond_15
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v24

    :goto_f
    add-int v21, v21, v24

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v25

    if-nez v25, :cond_17

    :goto_10
    move/from16 v25, v7

    move/from16 v26, v13

    :goto_11
    move/from16 v2, v20

    :cond_16
    move-object/from16 v7, v23

    const/4 v9, 0x1

    goto/16 :goto_16

    :cond_17
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v25

    if-eqz v25, :cond_18

    move/from16 v25, v7

    move/from16 v26, v13

    goto :goto_12

    :cond_18
    if-nez v7, :cond_19

    goto :goto_10

    :cond_19
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getMaxLine()I

    move-result v2

    move/from16 v25, v7

    const/4 v7, -0x1

    move/from16 v26, v13

    if-eq v2, v7, :cond_1a

    const/4 v7, 0x1

    add-int/lit8 v13, v24, 0x1

    if-gt v2, v13, :cond_1a

    goto :goto_11

    :cond_1a
    move/from16 v2, v20

    invoke-interface {v5, v4, v11, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v7

    if-lez v7, :cond_1b

    add-int v21, v21, v7

    :cond_1b
    add-int v15, v15, v21

    if-ge v8, v15, :cond_16

    :goto_12
    invoke-virtual {v12}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_1d

    if-lez v11, :cond_1c

    add-int/lit8 v2, v11, -0x1

    move-object/from16 v7, v23

    goto :goto_13

    :cond_1c
    move-object/from16 v7, v23

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v7, v12, v2, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v2, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v10, v2

    goto :goto_14

    :cond_1d
    move-object/from16 v7, v23

    :goto_14
    if-eqz v6, :cond_1e

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v2

    const/4 v12, -0x1

    if-ne v2, v12, :cond_1f

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v2, v12

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v12

    add-int/2addr v12, v2

    add-int/2addr v12, v10

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v2

    invoke-interface {v5, v3, v12, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v2

    invoke-virtual {v4, v9, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v4, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_15

    :cond_1e
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v2

    const/4 v12, -0x1

    if-ne v2, v12, :cond_1f

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v2

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v2, v12

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v12, v2

    add-int/2addr v12, v10

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v2

    invoke-interface {v5, v3, v12, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v2

    invoke-virtual {v4, v2, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v4, v11}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    :cond_1f
    :goto_15
    new-instance v12, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v12}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    const/4 v9, 0x1

    iput v9, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iput v14, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iput v11, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move/from16 v2, v18

    const/4 v13, 0x0

    goto :goto_17

    :goto_16
    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v13, v9

    iput v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v13, v2, 0x1

    move/from16 v2, v19

    :goto_17
    iget-boolean v9, v12, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    const/16 v19, 0x0

    cmpl-float v15, v15, v19

    if-eqz v15, :cond_20

    const/4 v15, 0x1

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    :goto_18
    or-int/2addr v9, v15

    iput-boolean v9, v12, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    iget-boolean v9, v12, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    cmpl-float v15, v15, v19

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    goto :goto_19

    :cond_21
    const/4 v15, 0x0

    :goto_19
    or-int/2addr v9, v15

    iput-boolean v9, v12, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v9, :cond_22

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    aput v15, v9, v11

    :cond_22
    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v6, :cond_23

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    goto :goto_1a

    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    :goto_1a
    if-eqz v6, :cond_24

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v19

    goto :goto_1b

    :cond_24
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v19

    :goto_1b
    add-int v15, v15, v19

    if-eqz v6, :cond_25

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v19

    goto :goto_1c

    :cond_25
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v19

    :goto_1c
    add-int v15, v15, v19

    add-int/2addr v15, v9

    iput v15, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    add-float/2addr v15, v9

    iput v15, v12, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    add-float/2addr v15, v9

    iput v15, v12, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v5, v4, v11, v13, v12}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    if-eqz v6, :cond_26

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto :goto_1d

    :cond_26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    :goto_1d
    if-eqz v6, :cond_27

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v15

    goto :goto_1e

    :cond_27
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v15

    :goto_1e
    add-int/2addr v9, v15

    if-eqz v6, :cond_28

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v15

    goto :goto_1f

    :cond_28
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v15

    :goto_1f
    add-int/2addr v9, v15

    invoke-interface {v5, v4}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v15

    add-int/2addr v15, v9

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v9

    const/4 v15, 0x2

    if-eq v9, v15, :cond_29

    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v4

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_20

    :cond_29
    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v4

    sub-int/2addr v15, v4

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    add-int/2addr v1, v15

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_2a
    :goto_20
    add-int/lit8 v15, v22, -0x1

    if-ne v11, v15, :cond_2b

    invoke-virtual {v12}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v7, v12, v11, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v10, v1

    :cond_2b
    move/from16 v1, p6

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2c

    const/4 v9, 0x1

    invoke-static {v9, v7}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/flexbox/FlexLine;

    iget v15, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v15, v1, :cond_2d

    if-lt v11, v1, :cond_2d

    if-nez p5, :cond_2d

    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    neg-int v10, v10

    move/from16 v4, p4

    move v15, v9

    goto :goto_21

    :cond_2c
    const/4 v9, 0x1

    :cond_2d
    move/from16 v4, p4

    move/from16 v15, p5

    :goto_21
    if-le v10, v4, :cond_2e

    if-eqz v15, :cond_2e

    move-object/from16 v0, p1

    move/from16 v1, v26

    goto :goto_23

    :cond_2e
    move/from16 v19, v2

    :goto_22
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move v4, v1

    move-object v9, v7

    move/from16 p5, v15

    move/from16 v15, v22

    move/from16 v7, v25

    move/from16 v1, v26

    goto/16 :goto_6

    :cond_2f
    move v15, v1

    move-object/from16 v0, p1

    :goto_23
    iput v1, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    return-void
.end method

.method public final checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0, p1, p2}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public final clearFlexLines(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v0, 0x0

    if-le p1, p2, :cond_3

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_1
    return-void
.end method

.method public final createOrders(I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    new-instance v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    iput v1, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final determineCrossSize(III)V
    .locals 12

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    move v11, p2

    move p2, p1

    move p1, v11

    :goto_1
    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p2, v4, :cond_15

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    move-result p2

    add-int/2addr p2, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/flexbox/FlexLine;

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_a

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v3, :cond_15

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    move-result p3

    if-eq p3, v1, :cond_14

    if-eq p3, v3, :cond_13

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq p3, v2, :cond_c

    const/4 v2, 0x4

    if-eq p3, v2, :cond_9

    const/4 p0, 0x5

    if-eq p3, p0, :cond_4

    goto/16 :goto_a

    :cond_4
    if-lt p2, p1, :cond_5

    goto/16 :goto_a

    :cond_5
    sub-int/2addr p1, p2

    int-to-float p0, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move p2, v6

    :goto_2
    if-ge v5, p1, :cond_15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/flexbox/FlexLine;

    iget v2, p3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v2, v2

    add-float/2addr v2, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v5, v3, :cond_6

    add-float/2addr v2, p2

    move p2, v6

    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v8, v3

    sub-float/2addr v2, v8

    add-float/2addr v2, p2

    cmpl-float p2, v2, v7

    if-lez p2, :cond_8

    add-int/lit8 v3, v3, 0x1

    sub-float/2addr v2, v7

    :cond_7
    :goto_3
    move p2, v2

    goto :goto_4

    :cond_8
    cmpg-float p2, v2, v4

    if-gez p2, :cond_7

    add-int/lit8 v3, v3, -0x1

    add-float/2addr v2, v7

    goto :goto_3

    :goto_4
    iput v3, p3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-lt p2, p1, :cond_a

    invoke-static {p1, v0, p2}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_a
    sub-int/2addr p1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    mul-int/2addr p2, v3

    div-int/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {p3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput p1, p3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-interface {p0, p2}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_c
    if-lt p2, p1, :cond_d

    goto/16 :goto_a

    :cond_d
    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    move v2, v6

    :goto_6
    if-ge v5, p3, :cond_12

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-eq v5, v8, :cond_11

    new-instance v8, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v8}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ne v5, v9, :cond_e

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v2, v6

    goto :goto_7

    :cond_e
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :goto_7
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v10, v9

    sub-float v10, p1, v10

    add-float/2addr v10, v2

    cmpl-float v2, v10, v7

    if-lez v2, :cond_10

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-float/2addr v10, v7

    :cond_f
    :goto_8
    move v2, v10

    goto :goto_9

    :cond_10
    cmpg-float v2, v10, v4

    if-gez v2, :cond_f

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-float/2addr v10, v7

    goto :goto_8

    :goto_9
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_12
    invoke-interface {p0, p2}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_a

    :cond_13
    invoke-static {p1, v0, p2}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_a

    :cond_14
    sub-int/2addr p1, p2

    new-instance p0, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {p0}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput p1, p0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-interface {v0, v5, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    :goto_a
    return-void
.end method

.method public final determineMainSize(III)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    :cond_0
    array-length v5, v2

    if-ge v5, v1, :cond_1

    array-length v2, v2

    mul-int/2addr v2, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    invoke-static {v1, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v1, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v2

    :goto_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    :goto_3
    add-int/2addr v4, v1

    goto :goto_5

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v4

    if-ne v1, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v4

    goto :goto_3

    :goto_5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_8

    aget v3, v1, p3

    :cond_8
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_b

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v1, v2, :cond_9

    iget-boolean v5, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v5, :cond_9

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_7

    :cond_9
    if-le v1, v2, :cond_a

    iget-boolean v1, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v1, :cond_a

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final ensureIndexToFlexLine(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasureSpecCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasuredSizeCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_15

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v5, :cond_0

    goto/16 :goto_d

    :cond_0
    sub-int v6, v4, v5

    int-to-float v6, v6

    div-float/2addr v6, v1

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v1, p5, v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v1, -0x80000000

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    move v8, v7

    move v9, v2

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v1, v10, :cond_14

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v1

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move v2, v5

    move v14, v7

    move v5, v8

    move/from16 v8, p2

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v14

    const/4 v15, 0x1

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-eqz v14, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    move v2, v5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_6

    aget-wide v22, v2, v10

    move v2, v5

    shr-long v4, v22, v19

    long-to-int v14, v4

    goto :goto_1

    :cond_6
    move v2, v5

    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_7

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_7
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v5, v5, v10

    if-nez v5, :cond_c

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    const/16 v16, 0x0

    cmpl-float v5, v5, v16

    if-lez v5, :cond_c

    int-to-float v4, v14

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v4, v15

    if-ne v1, v4, :cond_8

    add-float/2addr v5, v9

    const/4 v9, 0x0

    :cond_8
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v14

    if-le v4, v14, :cond_9

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v5, v10

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    sub-float/2addr v5, v7

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v7, v15

    goto :goto_3

    :cond_9
    int-to-float v14, v4

    sub-float/2addr v5, v14

    add-float/2addr v5, v9

    float-to-double v14, v5

    cmpl-double v9, v14, v20

    if-lez v9, :cond_b

    add-int/lit8 v4, v4, 0x1

    sub-double v14, v14, v20

    :goto_2
    double-to-float v5, v14

    :cond_a
    move v9, v5

    goto :goto_3

    :cond_b
    cmpg-double v9, v14, v17

    if-gez v9, :cond_a

    add-int/lit8 v4, v4, -0x1

    add-double v14, v14, v20

    goto :goto_2

    :goto_3
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v13, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v11, v12, v10}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move/from16 v14, v17

    goto :goto_4

    :cond_c
    move/from16 v15, p1

    :goto_4
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-interface {v11, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v8, v14

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    iput v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v8, p2

    goto/16 :goto_a

    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_d

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_e

    aget-wide v22, v14, v10

    move v14, v7

    move/from16 v24, v8

    shr-long v7, v22, v19

    long-to-int v5, v7

    goto :goto_6

    :cond_e
    move v14, v7

    move/from16 v24, v8

    :goto_6
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v7, v7, v10

    if-nez v7, :cond_13

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    int-to-float v4, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v4, v15

    if-ne v1, v4, :cond_f

    add-float/2addr v5, v9

    move v9, v8

    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v7

    if-le v4, v7, :cond_10

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v5, v10

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    sub-float/2addr v5, v7

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v7, v15

    goto :goto_8

    :cond_10
    int-to-float v7, v4

    sub-float/2addr v5, v7

    add-float/2addr v5, v9

    float-to-double v8, v5

    cmpl-double v7, v8, v20

    if-lez v7, :cond_12

    add-int/lit8 v4, v4, 0x1

    sub-double v8, v8, v20

    :goto_7
    double-to-float v5, v8

    :cond_11
    move v9, v5

    move v7, v14

    goto :goto_8

    :cond_12
    cmpg-double v7, v8, v17

    if-gez v7, :cond_11

    add-int/lit8 v4, v4, -0x1

    add-double v8, v8, v20

    goto :goto_7

    :goto_8
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v8, p2

    invoke-virtual {v0, v8, v13, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v0, v12, v10, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v11, v12, v10}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move v5, v15

    goto :goto_9

    :cond_13
    move/from16 v8, p2

    move v7, v14

    :goto_9
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v5

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v5, v10

    invoke-interface {v11, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v5

    move/from16 v5, v24

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int/2addr v11, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v11

    add-int/2addr v4, v10

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v5

    :goto_a
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto :goto_c

    :goto_b
    move v4, v5

    move v7, v14

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move v5, v2

    move v8, v4

    const/4 v2, 0x0

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v8, p2

    move v2, v5

    move v14, v7

    if-eqz v14, :cond_15

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v2, v1, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_d
    return-void
.end method

.method public final getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p3

    invoke-interface {p0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p3

    if-le p1, p3, :cond_0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p3

    if-ge p1, p3, :cond_1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p3

    invoke-interface {p0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p3

    if-le p1, p3, :cond_0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p3

    if-ge p1, p3, :cond_1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    goto/16 :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_2

    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_2
    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    add-int/2addr p2, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p2, p6

    div-int/2addr p2, v3

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_6

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int p0, p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p1, p3, p0, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, p0

    sub-int/2addr p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p6

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_7
    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p0

    if-eq p0, v3, :cond_8

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, p6

    invoke-virtual {p1, p3, p0, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_8
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p0}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result p0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    const/4 p2, 0x4

    if-eq p0, p2, :cond_5

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/2addr v0, v1

    if-nez p3, :cond_2

    add-int/2addr p4, v0

    add-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int/2addr p4, v0

    sub-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p4, p0

    add-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p6, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p3

    add-int/2addr p3, p0

    sub-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p6

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1, p3, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p2, p6

    invoke-virtual {p1, p0, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public makeCombinedLong(II)J
    .locals 4

    int-to-long v0, p2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_15

    if-le v4, v1, :cond_0

    goto/16 :goto_c

    :cond_0
    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    move v9, v5

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v2, v10, :cond_14

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move v14, v7

    move v5, v8

    move/from16 v8, p2

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v14

    const/4 v15, 0x1

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x20

    const/high16 v22, 0x3f800000    # 1.0f

    if-eqz v14, :cond_c

    if-ne v14, v15, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_5

    aget-wide v23, v5, v10

    shr-long v4, v23, v21

    long-to-int v14, v4

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_6

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_6
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v5, v5, v10

    if-nez v5, :cond_b

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    const/16 v16, 0x0

    cmpl-float v5, v5, v16

    if-lez v5, :cond_b

    int-to-float v4, v14

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v5, v15

    if-ne v2, v5, :cond_7

    add-float/2addr v4, v9

    const/4 v9, 0x0

    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v14

    if-ge v5, v14, :cond_8

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v4, v10

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    sub-float/2addr v4, v7

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v7, v15

    goto :goto_2

    :cond_8
    int-to-float v14, v5

    sub-float/2addr v4, v14

    add-float/2addr v4, v9

    float-to-double v14, v4

    cmpl-double v9, v14, v19

    if-lez v9, :cond_a

    add-int/lit8 v5, v5, 0x1

    sub-float v4, v4, v22

    :cond_9
    :goto_1
    move v9, v4

    goto :goto_2

    :cond_a
    cmpg-double v9, v14, v17

    if-gez v9, :cond_9

    add-int/lit8 v5, v5, -0x1

    add-float v4, v4, v22

    goto :goto_1

    :goto_2
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v13, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v12, v10, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v11, v12, v10}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move/from16 v14, v17

    goto :goto_3

    :cond_b
    move/from16 v15, p1

    :goto_3
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-interface {v11, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v8, v14

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    iput v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v8, p2

    goto/16 :goto_9

    :cond_c
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_d

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_e

    aget-wide v23, v14, v10

    move v14, v7

    move/from16 v25, v8

    shr-long v7, v23, v21

    long-to-int v5, v7

    goto :goto_5

    :cond_e
    move v14, v7

    move/from16 v25, v8

    :goto_5
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v7, v7, v10

    if-nez v7, :cond_13

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    int-to-float v4, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v5, v15

    if-ne v2, v5, :cond_f

    add-float/2addr v4, v9

    move v9, v8

    :cond_f
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v7

    if-ge v5, v7, :cond_10

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v5

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v4, v10

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    sub-float/2addr v4, v7

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v7, v15

    goto :goto_7

    :cond_10
    int-to-float v7, v5

    sub-float/2addr v4, v7

    add-float/2addr v4, v9

    float-to-double v8, v4

    cmpl-double v7, v8, v19

    if-lez v7, :cond_12

    add-int/lit8 v5, v5, 0x1

    sub-float v4, v4, v22

    :cond_11
    :goto_6
    move v9, v4

    move v7, v14

    goto :goto_7

    :cond_12
    cmpg-double v7, v8, v17

    if-gez v7, :cond_11

    add-int/lit8 v5, v5, -0x1

    add-float v4, v4, v22

    goto :goto_6

    :goto_7
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v8, p2

    invoke-virtual {v0, v8, v13, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v11, v12, v10}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move v5, v15

    goto :goto_8

    :cond_13
    move/from16 v8, p2

    move v7, v14

    :goto_8
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v5

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v5, v10

    invoke-interface {v11, v12}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v5

    move/from16 v5, v25

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int/2addr v11, v4

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v11

    add-int/2addr v4, v10

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v5

    :goto_9
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto :goto_b

    :goto_a
    move v4, v5

    move v7, v14

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v8, v4

    const/4 v5, 0x0

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v8, p2

    move v14, v7

    if-eqz v14, :cond_15

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v1, v2, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_c
    return-void
.end method

.method public final stretchViewHorizontally(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v1, p1, p3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public final stretchViewVertically(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-interface {v1, p1, p3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public final stretchViews(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v3

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v4

    const-string v6, "Invalid flex direction: "

    const/4 v9, 0x4

    if-ne v4, v9, :cond_a

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v4, :cond_1

    aget v1, v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v1, v11, :cond_f

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_9

    iget v15, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v15, v14

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v10

    if-lt v14, v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v2, v15}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v8

    const/4 v5, -0x1

    if-eq v8, v5, :cond_4

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    if-eq v5, v9, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_7

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v6}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iget v5, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v0, v10, v5, v15}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_4

    :cond_7
    iget v5, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v0, v10, v5, v15}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget-object v5, v4, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v8}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v3, :cond_e

    if-eq v3, v9, :cond_e

    const/4 v11, 0x3

    if-eq v3, v10, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v6}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v8, v12, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    :cond_e
    const/4 v11, 0x3

    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v8, v12, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final updateMeasureCache(Landroid/view/View;III)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p3

    aput-wide p3, v0, p2

    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p0

    aput-wide p0, p3, p2

    :cond_1
    return-void
.end method
