.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    invoke-static {p0, p1, p2, v0, v4}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v1, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move/from16 v18, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    if-nez p2, :cond_4

    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    goto :goto_7

    :cond_4
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    if-ne v5, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    :goto_7
    if-nez v21, :cond_15

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    const/16 v25, 0x4

    if-eqz v23, :cond_8

    const/16 v25, 0x1

    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_9

    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, p2

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_a

    if-eq v6, v12, :cond_a

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int v26, v26, v5

    move/from16 v5, v26

    goto :goto_9

    :cond_a
    move/from16 v5, v26

    :goto_9
    if-eqz v23, :cond_b

    if-eq v6, v12, :cond_b

    if-eq v6, v14, :cond_b

    const/16 v25, 0x5

    :cond_b
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_e

    if-ne v6, v14, :cond_c

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v29, v4

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v30, v7

    const/4 v7, 0x6

    invoke-virtual {v10, v2, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_a

    :cond_c
    move/from16 v29, v4

    move-object/from16 v30, v7

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v7, 0x7

    invoke-virtual {v10, v2, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_a
    if-eqz v3, :cond_d

    if-nez v23, :cond_d

    const/4 v2, 0x5

    goto :goto_b

    :cond_d
    move/from16 v2, v25

    :goto_b
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10, v4, v7, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move/from16 v25, v2

    goto :goto_c

    :cond_e
    move/from16 v29, v4

    move-object/from16 v30, v7

    :goto_c
    if-eqz v18, :cond_10

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_f

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v24, v1

    const/4 v1, 0x0

    const/4 v7, 0x5

    invoke-virtual {v10, v2, v4, v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_d

    :cond_f
    move-object/from16 v24, v1

    :goto_d
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v4, 0x7

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v2, v7, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_e

    :cond_10
    move-object/from16 v24, v1

    :goto_e
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v4, v6, :cond_11

    goto :goto_f

    :cond_11
    move-object/from16 v19, v2

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v19, v2

    :goto_10
    if-eqz v19, :cond_14

    move-object/from16 v2, v19

    move-object v6, v2

    goto :goto_11

    :cond_14
    const/4 v2, 0x1

    move/from16 v21, v2

    :goto_11
    move/from16 v4, v29

    move-object/from16 v7, v30

    goto/16 :goto_7

    :cond_15
    move/from16 v29, v4

    move-object/from16 v30, v7

    if-eqz v15, :cond_19

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_19

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_16

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v2, v2, p2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_17

    if-nez v23, :cond_17

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v0, :cond_17

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v7, 0x5

    invoke-virtual {v10, v3, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_13

    :cond_17
    if-eqz v23, :cond_18

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v0, :cond_18

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v7, 0x4

    invoke-virtual {v10, v3, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_18
    :goto_13
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v7, 0x6

    invoke-virtual {v10, v3, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_19
    if-eqz v18, :cond_1a

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v10, v1, v2, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_1a
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v7, :cond_22

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v5, :cond_1b

    iget v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v5, v5

    move/from16 v29, v5

    :cond_1b
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v1, :cond_20

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v0, v0, p2

    const/16 v20, 0x0

    cmpg-float v26, v0, v20

    if-gez v26, :cond_1d

    move/from16 v26, v0

    iget-boolean v0, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v0, :cond_1c

    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v0, v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v39, v1

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v6

    move-object/from16 v40, v7

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v10, v0, v1, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v17, v8

    const/4 v7, 0x7

    const/4 v8, 0x0

    goto/16 :goto_17

    :cond_1c
    move/from16 v39, v1

    move-object/from16 v25, v6

    move-object/from16 v40, v7

    const/4 v7, 0x4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_1d
    move/from16 v26, v0

    move/from16 v39, v1

    move-object/from16 v25, v6

    move-object/from16 v40, v7

    const/4 v7, 0x4

    :goto_15
    cmpl-float v1, v0, v20

    if-nez v1, :cond_1e

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v1, v1, v6

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v17, v8

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v10, v1, v6, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_17

    :cond_1e
    move-object/from16 v17, v8

    const/4 v7, 0x7

    const/4 v8, 0x0

    if-eqz v3, :cond_1f

    iget-object v1, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v6, v6, v26

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v31, p3, 0x1

    aget-object v8, v8, v31

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v41, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v3

    move-object/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v29

    move/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-virtual/range {v31 .. v38}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_16

    :cond_1f
    move-object/from16 v41, v3

    :goto_16
    move-object v1, v2

    move v3, v0

    move v4, v3

    move-object v3, v1

    :goto_17
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v6, v25

    move/from16 v1, v39

    move-object/from16 v7, v40

    const/4 v2, 0x1

    goto/16 :goto_14

    :cond_20
    move/from16 v39, v1

    move-object/from16 v41, v3

    move-object/from16 v25, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    goto :goto_18

    :cond_21
    move/from16 v39, v1

    move-object/from16 v25, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    goto :goto_18

    :cond_22
    move-object/from16 v25, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    :goto_18
    if-eqz v14, :cond_29

    if-eq v14, v15, :cond_24

    if-eqz v23, :cond_23

    goto :goto_19

    :cond_23
    move-object/from16 v35, v9

    move-object/from16 v33, v40

    goto/16 :goto_1e

    :cond_24
    :goto_19
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_25

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1a

    :cond_25
    const/4 v3, 0x0

    :goto_1a
    move-object/from16 v20, v3

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1b

    :cond_26
    const/4 v3, 0x0

    :goto_1b
    move-object/from16 v24, v3

    iget-object v3, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v3, p3

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v7, v1, v3

    if-eqz v20, :cond_28

    if-eqz v24, :cond_28

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez p2, :cond_27

    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v26, v1

    goto :goto_1c

    :cond_27
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v26, v1

    :goto_1c
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v28

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v31, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v32, v6

    move-object/from16 v6, v24

    move-object/from16 v34, v7

    move-object/from16 v33, v40

    move-object/from16 v7, v32

    move-object/from16 v32, v8

    move/from16 v8, v28

    move-object/from16 v35, v9

    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1d

    :cond_28
    move-object/from16 v34, v7

    move-object/from16 v32, v8

    move-object/from16 v35, v9

    move-object/from16 v33, v40

    :goto_1d
    goto/16 :goto_38

    :cond_29
    move-object/from16 v35, v9

    move-object/from16 v33, v40

    :goto_1e
    if-eqz v22, :cond_3d

    if-eqz v14, :cond_3d

    move-object v1, v14

    move-object v2, v14

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_2a

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_2a

    const/16 v24, 0x1

    goto :goto_1f

    :cond_2a
    const/16 v24, 0x0

    :goto_1f
    move/from16 v20, v24

    move-object v8, v1

    move-object v9, v2

    :goto_20
    if-eqz v8, :cond_3c

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    move-object v7, v1

    :goto_21
    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_2c

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    goto :goto_21

    :cond_2b
    const/16 v5, 0x8

    :cond_2c
    if-nez v7, :cond_2e

    if-ne v8, v15, :cond_2d

    goto :goto_22

    :cond_2d
    move v0, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    goto/16 :goto_2a

    :cond_2e
    :goto_22
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2f

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_23

    :cond_2f
    const/4 v1, 0x0

    :goto_23
    if-eq v9, v8, :cond_30

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v19, v1

    goto :goto_25

    :cond_30
    if-ne v8, v14, :cond_32

    if-ne v9, v8, :cond_32

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_31

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_24

    :cond_31
    const/4 v2, 0x0

    :goto_24
    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_25

    :cond_32
    move-object/from16 v19, v1

    :goto_25
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v0, v0, v25

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    if-eqz v7, :cond_33

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v5, p3

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v5, v5, v26

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v26, v1

    move-object/from16 v28, v2

    move-object/from16 v31, v3

    goto :goto_26

    :cond_33
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v5, v5, v26

    iget-object v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_34

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_34
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v5, v5, v26

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v26, v1

    move-object/from16 v28, v2

    move-object/from16 v31, v3

    :goto_26
    if-eqz v26, :cond_35

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    if-eqz v9, :cond_36

    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v24, v24, v1

    :cond_36
    if-eqz v4, :cond_3a

    if-eqz v19, :cond_3a

    if-eqz v28, :cond_3a

    if-eqz v31, :cond_3a

    move/from16 v1, v24

    if-ne v8, v14, :cond_37

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v32, v1

    goto :goto_27

    :cond_37
    move/from16 v32, v1

    :goto_27
    move v1, v0

    if-ne v8, v15, :cond_38

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v34, v1

    goto :goto_28

    :cond_38
    move/from16 v34, v1

    :goto_28
    const/4 v1, 0x5

    if-eqz v20, :cond_39

    const/4 v1, 0x7

    move/from16 v36, v1

    goto :goto_29

    :cond_39
    move/from16 v36, v1

    :goto_29
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v19

    move-object/from16 v37, v4

    move/from16 v4, v32

    move/from16 v38, v0

    const/16 v0, 0x8

    move-object/from16 v25, v6

    move-object/from16 v6, v28

    move-object/from16 v39, v7

    move-object/from16 v7, v31

    move-object/from16 v40, v8

    move/from16 v8, v34

    move-object/from16 v41, v9

    move/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2a

    :cond_3a
    move/from16 v38, v0

    move-object/from16 v37, v4

    move-object/from16 v25, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    :goto_2a
    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3b

    move-object/from16 v1, v40

    move-object v9, v1

    goto :goto_2b

    :cond_3b
    move-object/from16 v9, v41

    :goto_2b
    move-object/from16 v8, v39

    move-object/from16 v19, v39

    goto/16 :goto_20

    :cond_3c
    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v38, v40

    goto/16 :goto_39

    :cond_3d
    const/16 v0, 0x8

    if-eqz v16, :cond_50

    if-eqz v14, :cond_50

    move-object v1, v14

    move-object v2, v14

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_3e

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_3e

    const/16 v24, 0x1

    goto :goto_2c

    :cond_3e
    const/16 v24, 0x0

    :goto_2c
    move-object v8, v1

    move-object v9, v2

    :goto_2d
    if-eqz v8, :cond_4b

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    :goto_2e
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_3f

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v2, p2

    goto :goto_2e

    :cond_3f
    if-eq v8, v14, :cond_49

    if-eq v8, v15, :cond_49

    if-eqz v1, :cond_49

    if-ne v1, v15, :cond_40

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_2f

    :cond_40
    move-object v7, v1

    :goto_2f
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_41

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_30

    :cond_41
    const/4 v1, 0x0

    :goto_30
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v0, v0, v25

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    if-eqz v7, :cond_43

    move-object/from16 v25, v1

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v2

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_42

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_31

    :cond_42
    const/4 v2, 0x0

    :goto_31
    move-object/from16 v28, v2

    move-object/from16 v31, v25

    move-object/from16 v25, v1

    goto :goto_32

    :cond_43
    move-object/from16 v25, v1

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    if-eqz v1, :cond_44

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_44
    move-object/from16 v25, v1

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v1, v1, v28

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v28, v1

    move-object/from16 v31, v2

    :goto_32
    if-eqz v25, :cond_45

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    :cond_45
    if-eqz v9, :cond_46

    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v19, v19, v1

    :cond_46
    const/4 v1, 0x4

    if-eqz v24, :cond_47

    const/4 v1, 0x7

    move/from16 v32, v1

    goto :goto_33

    :cond_47
    move/from16 v32, v1

    :goto_33
    if-eqz v5, :cond_48

    if-eqz v4, :cond_48

    if-eqz v31, :cond_48

    if-eqz v28, :cond_48

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v36, v4

    move/from16 v4, v19

    move-object/from16 v37, v5

    move/from16 v5, v34

    move-object/from16 v34, v6

    move-object/from16 v6, v31

    move-object/from16 v20, v7

    move-object/from16 v7, v28

    move-object/from16 v38, v8

    move v8, v0

    move-object/from16 v39, v9

    move/from16 v9, v32

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_34

    :cond_48
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v34, v6

    move-object/from16 v20, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    :goto_34
    move-object/from16 v19, v20

    goto :goto_35

    :cond_49
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v19, v1

    :goto_35
    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    move-object/from16 v0, v38

    move-object v9, v0

    goto :goto_36

    :cond_4a
    move-object/from16 v9, v39

    :goto_36
    move-object/from16 v8, v19

    move v0, v1

    goto/16 :goto_2d

    :cond_4b
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_4e

    if-eq v14, v15, :cond_4c

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/4 v6, 0x4

    invoke-virtual {v10, v1, v2, v3, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v20, v9

    goto :goto_37

    :cond_4c
    const/4 v6, 0x4

    if-eqz v7, :cond_4d

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    const/16 v26, 0x4

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v6, v28

    move-object/from16 v42, v7

    move-object/from16 v7, v20

    move-object/from16 v43, v8

    move/from16 v8, v25

    move-object/from16 v20, v9

    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_37

    :cond_4d
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v20, v9

    goto :goto_37

    :cond_4e
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v20, v9

    :goto_37
    move-object/from16 v1, v42

    if-eqz v1, :cond_4f

    if-eq v14, v15, :cond_4f

    move-object/from16 v2, v43

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x4

    invoke-virtual {v10, v3, v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_39

    :cond_4f
    move-object/from16 v2, v43

    goto :goto_39

    :cond_50
    :goto_38
    move-object/from16 v38, v25

    :goto_39
    if-nez v22, :cond_51

    if-eqz v16, :cond_59

    :cond_51
    if-eqz v14, :cond_59

    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_52

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3a

    :cond_52
    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v20, v2

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_53

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3b

    :cond_53
    const/4 v2, 0x0

    :goto_3b
    if-eq v13, v15, :cond_55

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_54

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v27, v4

    goto :goto_3c

    :cond_54
    const/16 v27, 0x0

    :goto_3c
    move-object/from16 v2, v27

    move-object/from16 v24, v2

    goto :goto_3d

    :cond_55
    move-object/from16 v24, v2

    :goto_3d
    if-ne v14, v15, :cond_56

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v9, v1

    goto :goto_3e

    :cond_56
    move-object v9, v1

    :goto_3e
    if-eqz v20, :cond_58

    if-eqz v24, :cond_58

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    if-nez v15, :cond_57

    move-object v1, v13

    move-object v15, v1

    :cond_57
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v28, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v26

    move/from16 v5, v25

    move-object/from16 v6, v24

    move/from16 v8, v27

    move-object/from16 v31, v9

    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_3f

    :cond_58
    move-object/from16 v31, v9

    :cond_59
    :goto_3f
    return-void
.end method
