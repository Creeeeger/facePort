.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# instance fields
.field mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field mLayoutHeightSpec:I

.field mLayoutWidthSpec:I

.field mPaddingBottom:I

.field mPaddingHeight:I

.field mPaddingTop:I

.field mPaddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private isSimilarSpec(III)Z
    .locals 2

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .locals 0

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInPlaceholder:Z

    if-nez v3, :cond_1

    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    move-result-object v3

    iget v6, v3, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    add-int/2addr v6, v4

    iput v6, v3, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x0

    :goto_0
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    check-cast v13, Landroid/view/View;

    sget-object v14, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v14, v15

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-wide/from16 v16, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v15, v7, :cond_e

    if-eq v15, v6, :cond_d

    const/4 v9, 0x3

    if-eq v15, v9, :cond_a

    const/4 v9, 0x4

    if-eq v15, v9, :cond_4

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_4
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v9, v12, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v12, v7, :cond_5

    move v12, v7

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v15, v7, :cond_6

    if-ne v15, v6, :cond_f

    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-ne v7, v15, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v15, v6, :cond_9

    if-eqz v12, :cond_9

    if-eqz v12, :cond_8

    if-nez v7, :cond_9

    :cond_8
    instance-of v7, v13, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_3
    move v9, v7

    goto :goto_5

    :cond_a
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    if-eqz v4, :cond_b

    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    if-eqz v5, :cond_c

    iget v15, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v9, v15

    :cond_c
    add-int/2addr v12, v9

    const/4 v9, -0x1

    invoke-static {v7, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_3

    :cond_d
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    const/4 v9, -0x2

    invoke-static {v7, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_3

    :cond_e
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :cond_f
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v14, v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_1a

    if-eq v7, v6, :cond_19

    const/4 v10, 0x3

    if-eq v7, v10, :cond_16

    const/4 v10, 0x4

    if-eq v7, v10, :cond_10

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_10
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    const/4 v5, -0x2

    invoke-static {v4, v11, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v5, v12, :cond_11

    move v5, v12

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    :goto_6
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v7, v12, :cond_12

    if-ne v7, v6, :cond_1b

    :cond_12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-ne v7, v10, :cond_13

    const/4 v7, 0x1

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    :goto_7
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v10, v6, :cond_15

    if-eqz v5, :cond_15

    if-eqz v5, :cond_14

    if-nez v7, :cond_15

    :cond_14
    instance-of v5, v13, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_a

    :cond_16
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    if-eqz v4, :cond_17

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_8

    :cond_17
    const/4 v4, 0x0

    :goto_8
    if-eqz v5, :cond_18

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v4, v5

    :cond_18
    add-int/2addr v11, v4

    const/4 v4, -0x1

    invoke-static {v7, v11, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    :goto_9
    move v4, v5

    goto :goto_a

    :cond_19
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    const/4 v5, -0x2

    invoke-static {v4, v11, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    goto :goto_a

    :cond_1a
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_9

    :cond_1b
    :goto_a
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_1c

    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v7

    const/16 v10, 0x100

    invoke-static {v7, v10}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-ne v7, v10, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-ge v7, v10, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    if-ne v7, v10, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-ge v7, v5, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v5

    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-ne v5, v7, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v5

    if-nez v5, :cond_1c

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-direct {v0, v5, v9, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    invoke-direct {v0, v5, v4, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1c
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_1d

    const/4 v7, 0x1

    goto :goto_b

    :cond_1d
    const/4 v7, 0x0

    :goto_b
    if-ne v8, v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_c

    :cond_1e
    const/4 v5, 0x0

    :goto_c
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v10, :cond_20

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v11, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v8, 0x0

    goto :goto_e

    :cond_20
    :goto_d
    const/4 v8, 0x1

    :goto_e
    if-eq v3, v10, :cond_22

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v10, :cond_21

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    goto :goto_10

    :cond_22
    :goto_f
    const/4 v3, 0x1

    :goto_10
    const/4 v10, 0x0

    if-eqz v7, :cond_23

    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v11, v11, v10

    if-lez v11, :cond_23

    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    if-eqz v5, :cond_24

    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v12, v10

    if-lez v10, :cond_24

    const/4 v10, 0x1

    goto :goto_12

    :cond_24
    const/4 v10, 0x0

    :goto_12
    if-nez v13, :cond_25

    return-void

    :cond_25
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_27

    if-eq v14, v6, :cond_27

    if-eqz v7, :cond_27

    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v6, :cond_27

    if-eqz v5, :cond_27

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v5, :cond_26

    goto :goto_13

    :cond_26
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1a

    :cond_27
    :goto_13
    instance-of v5, v13, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v5, :cond_28

    instance-of v5, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v5, :cond_28

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    move-object v6, v13

    check-cast v6, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v6, v5, v9, v4}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    goto :goto_14

    :cond_28
    invoke-virtual {v13, v9, v4}, Landroid/view/View;->measure(II)V

    :goto_14
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v7

    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v14, :cond_29

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_15

    :cond_29
    move v14, v5

    :goto_15
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v15, :cond_2a

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_2a
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v15, :cond_2b

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v18, v4

    goto :goto_16

    :cond_2b
    move/from16 v18, v4

    move v15, v6

    :goto_16
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v4, :cond_2c

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_2c
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v4

    move/from16 v19, v7

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v4

    if-nez v4, :cond_2e

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v11, :cond_2d

    if-eqz v8, :cond_2d

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v7, v15

    mul-float/2addr v7, v3

    add-float/2addr v7, v4

    float-to-int v3, v7

    move v14, v3

    goto :goto_17

    :cond_2d
    if-eqz v10, :cond_2e

    if-eqz v3, :cond_2e

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v7, v14

    div-float/2addr v7, v3

    add-float/2addr v7, v4

    float-to-int v3, v7

    move v15, v3

    :cond_2e
    :goto_17
    if-ne v5, v14, :cond_30

    if-eq v6, v15, :cond_2f

    goto :goto_18

    :cond_2f
    move/from16 v5, v19

    const/4 v3, -0x1

    const/4 v7, 0x0

    goto :goto_1a

    :cond_30
    :goto_18
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v5, v14, :cond_31

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :cond_31
    if-eq v6, v15, :cond_32

    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_19

    :cond_32
    move/from16 v4, v18

    :goto_19
    invoke-virtual {v13, v9, v4}, Landroid/view/View;->measure(II)V

    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v3

    move v14, v5

    const/4 v3, -0x1

    move v5, v4

    :goto_1a
    if-eq v5, v3, :cond_33

    const/4 v3, 0x1

    goto :goto_1b

    :cond_33
    move v3, v7

    :goto_1b
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v14, v4, :cond_34

    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v15, v4, :cond_35

    :cond_34
    const/4 v7, 0x1

    :cond_35
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-boolean v4, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    if-eqz v4, :cond_36

    const/4 v7, 0x1

    goto :goto_1c

    :cond_36
    move v7, v3

    :goto_1c
    if-eqz v7, :cond_37

    const/4 v3, -0x1

    if-eq v5, v3, :cond_37

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-eq v1, v5, :cond_37

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    :cond_37
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    move-result-object v0

    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    sub-long v1, v1, v16

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    :cond_38
    return-void
.end method
