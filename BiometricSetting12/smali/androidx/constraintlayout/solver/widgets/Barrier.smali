.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 12

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v0, :cond_11

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v8, :cond_2

    if-ne v8, v4, :cond_3

    :cond_2
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_3

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v8, v3, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_5

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v6, 0x0

    :goto_4
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_b

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v9, v9, v10

    iput-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v9, 0x0

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_8

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v10, p0, :cond_8

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v9, v10

    :cond_8
    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v10, :cond_a

    if-ne v10, v3, :cond_9

    goto :goto_5

    :cond_9
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v11, v9

    invoke-virtual {p1, v10, v8, v11, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    sub-int/2addr v11, v9

    invoke-virtual {p1, v10, v8, v11, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    const/4 v6, 0x4

    :cond_c
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v9, 0x7

    if-nez v8, :cond_d

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_7

    :cond_d
    if-ne v8, v4, :cond_e

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_7

    :cond_e
    if-ne v8, v3, :cond_f

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_7

    :cond_f
    if-ne v8, v5, :cond_10

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_10
    :goto_7
    return-void

    :cond_11
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method

.method public getBarrierType()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method
