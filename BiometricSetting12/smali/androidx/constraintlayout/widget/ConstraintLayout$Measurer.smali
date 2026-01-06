.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final didMeasures()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v10

    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const/4 v15, -0x2

    const/4 v5, 0x1

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v14

    invoke-static {v14, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    const/4 v12, 0x1

    iget v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v14, v5, :cond_2

    move v14, v5

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    iget-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v5, :cond_4

    if-eqz v14, :cond_3

    if-eqz v14, :cond_4

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v5, v5, v16

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-eq v5, v15, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v12, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v14

    add-int/2addr v14, v11

    const/4 v15, -0x1

    invoke-static {v5, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    goto :goto_1

    :pswitch_2
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    const/4 v12, 0x1

    goto :goto_1

    :pswitch_3
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    nop

    :cond_4
    :goto_1
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v14

    aget v5, v5, v14

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_4
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    const/4 v13, 0x1

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iget-boolean v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v14, :cond_7

    if-eqz v5, :cond_6

    if-eqz v5, :cond_7

    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-eq v14, v15, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v13, 0x0

    goto :goto_3

    :pswitch_5
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v14

    add-int/2addr v14, v10

    const/4 v15, -0x1

    invoke-static {v5, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_3

    :pswitch_6
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    const/4 v13, 0x1

    goto :goto_3

    :pswitch_7
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    nop

    :cond_7
    :goto_3
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v15, :cond_b

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_a

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v15, 0x1

    :goto_7
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_d

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_c

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v0, 0x1

    :goto_9
    const/16 v19, 0x0

    if-eqz v5, :cond_e

    move-object/from16 v20, v3

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v20, v3

    :cond_f
    const/4 v3, 0x0

    :goto_a
    if-eqz v14, :cond_10

    move-object/from16 v21, v4

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v19

    if-lez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v21, v4

    :cond_11
    const/4 v4, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v19

    move/from16 v22, v6

    move-object/from16 v6, v19

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v23, v7

    move-object/from16 v7, v19

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v10

    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-nez v10, :cond_13

    if-eqz v5, :cond_13

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_13

    if-eqz v14, :cond_13

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_12

    goto :goto_c

    :cond_12
    move/from16 v30, v3

    move/from16 v27, v5

    move/from16 v28, v11

    move/from16 v3, v19

    move/from16 v11, v24

    move/from16 v5, v25

    const/16 v16, 0x0

    goto/16 :goto_15

    :cond_13
    :goto_c
    instance-of v10, v6, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v10, :cond_14

    instance-of v10, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_14

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move/from16 v27, v5

    move-object v5, v6

    check-cast v5, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v5, v10, v8, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    goto :goto_d

    :cond_14
    move/from16 v27, v5

    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    :goto_d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v25

    move/from16 v28, v5

    move/from16 v19, v10

    if-eqz v12, :cond_15

    move/from16 v24, v8

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v8, v16

    goto :goto_e

    :cond_15
    move/from16 v24, v8

    const/16 v16, 0x0

    :goto_e
    if-eqz v13, :cond_16

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v18, 0x1

    aput v10, v8, v18

    :cond_16
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_17

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v29, v9

    move/from16 v9, v28

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v9, v28

    goto :goto_f

    :cond_17
    move/from16 v29, v9

    move/from16 v9, v28

    :goto_f
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_18

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_18
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_19

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v28, v11

    move/from16 v11, v19

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v11, v19

    goto :goto_10

    :cond_19
    move/from16 v28, v11

    move/from16 v11, v19

    :goto_10
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_1a

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_1a
    if-eqz v3, :cond_1b

    if-eqz v15, :cond_1b

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v30, v3

    int-to-float v3, v11

    mul-float/2addr v3, v8

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v3, v3, v19

    float-to-int v3, v3

    move v9, v3

    goto :goto_11

    :cond_1b
    move/from16 v30, v3

    if-eqz v4, :cond_1c

    if-eqz v0, :cond_1c

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v8, v9

    div-float/2addr v8, v3

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v8, v8, v19

    float-to-int v8, v8

    move v11, v8

    :cond_1c
    :goto_11
    if-ne v5, v9, :cond_1e

    if-eq v10, v11, :cond_1d

    goto :goto_12

    :cond_1d
    move v3, v9

    move/from16 v8, v24

    move/from16 v5, v25

    move/from16 v9, v29

    goto :goto_15

    :cond_1e
    :goto_12
    if-eq v5, v9, :cond_1f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_13

    :cond_1f
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v8, v24

    :goto_13
    if-eq v10, v11, :cond_20

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_14

    :cond_20
    move/from16 v3, v29

    :goto_14
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v25

    move v9, v3

    move/from16 v3, v19

    move/from16 v11, v24

    move/from16 v5, v25

    :goto_15
    const/4 v10, -0x1

    if-eq v5, v10, :cond_21

    const/4 v10, 0x1

    goto :goto_16

    :cond_21
    move/from16 v10, v16

    :goto_16
    move/from16 v17, v0

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v3, v0, :cond_23

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v11, v0, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v0, v16

    goto :goto_18

    :cond_23
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_24

    const/4 v10, 0x1

    :cond_24
    if-eqz v10, :cond_25

    const/4 v0, -0x1

    if-eq v5, v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v0, v5, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    :cond_25
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
