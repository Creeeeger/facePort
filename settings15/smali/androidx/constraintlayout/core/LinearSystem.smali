.class public final Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static sPoolSize:I = 0x3e8


# instance fields
.field public hasSimpleDefinition:Z

.field public mAlreadyTestedCandidates:[Z

.field public final mCache:Landroidx/constraintlayout/core/Cache;

.field public final mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

.field public mMaxColumns:I

.field public mMaxRows:I

.field public mNumColumns:I

.field public mNumRows:I

.field public mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field public mPoolVariablesCount:I

.field public mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field public mTableSize:I

.field public mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

.field public mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    const/16 v1, 0x20

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    new-array v2, v1, [Z

    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    sget v2, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    new-array v2, v2, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    new-array v2, v1, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    new-instance v2, Landroidx/constraintlayout/core/Cache;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-direct {v3}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    new-instance v3, Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-direct {v3}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v1, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iput-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    const/16 v3, 0x80

    new-array v4, v3, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v4, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v3, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    iput v0, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    new-instance v0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    iput-object v0, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    invoke-direct {v0, v2}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    return-void
.end method

.method public static getObjectVariableValue(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    iget v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v2, v3, v1

    iput v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    move-object v2, v4

    :cond_0
    check-cast v2, Landroidx/constraintlayout/core/SolverVariable;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/constraintlayout/core/SolverVariable;

    invoke-direct {v2, p1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    iput-object p1, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    iput-object p1, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    sget v0, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    if-lt p1, v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Landroidx/constraintlayout/core/LinearSystem;->sPoolSize:I

    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    aput-object v2, p1, v0

    return-object v2
.end method

.method public final addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p3, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_2

    iget-object p4, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    int-to-float p1, p3

    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_0

    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    mul-float/2addr v3, p4

    invoke-virtual {p1, p5, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    mul-float/2addr v1, p4

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)V

    :cond_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-nez v2, :cond_20

    iget-object v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    iget-object v6, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    iget v9, v8, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    if-ne v9, v5, :cond_3

    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v9, :cond_5

    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    goto :goto_4

    :cond_5
    iget-object v9, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v6, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    iget v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    iget v7, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v8, 0x0

    :goto_6
    const/4 v9, -0x1

    if-eq v7, v9, :cond_b

    iget v9, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCurrentSize:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v10, v9, v7

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v10, v11

    aput v10, v9, v7

    iget-object v9, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    move v11, v6

    move v13, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_7
    sget-object v15, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ge v8, v2, :cond_14

    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    iget-object v7, v5, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v7, v15, :cond_f

    if-nez v9, :cond_d

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_c

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_8
    move v11, v4

    move-object v9, v5

    goto :goto_c

    :cond_d
    cmpl-float v7, v11, v4

    if-lez v7, :cond_e

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_c

    goto :goto_9

    :cond_e
    if-nez v12, :cond_13

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_13

    :goto_9
    move v12, v3

    goto :goto_8

    :cond_f
    if-nez v9, :cond_13

    cmpg-float v7, v4, v6

    if-gez v7, :cond_13

    if-nez v10, :cond_11

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_a
    move v13, v4

    move-object v10, v5

    goto :goto_c

    :cond_11
    cmpl-float v7, v13, v4

    if-lez v7, :cond_12

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_10

    goto :goto_b

    :cond_12
    if-nez v14, :cond_13

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-gt v7, v3, :cond_13

    :goto_b
    move v14, v3

    goto :goto_a

    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_7

    :cond_14
    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    move-object v9, v10

    :goto_d
    if-nez v9, :cond_16

    move v2, v3

    goto :goto_e

    :cond_16
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v4

    if-nez v4, :cond_17

    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    :cond_17
    if-eqz v2, :cond_1c

    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v2, v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_18
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v7, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v2, v7, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    iget v7, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/2addr v4, v3

    if-ne v7, v4, :cond_1c

    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    iput-object v7, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->clear()V

    const/4 v7, 0x0

    :goto_f
    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v8

    if-ge v7, v8, :cond_19

    iget-object v8, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    iget-object v9, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v9

    iget-object v10, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v10, v8, v9, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_19
    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/ArrayRow;)V

    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1d

    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-ne v4, v2, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_1a
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_1b
    iget-object v2, v5, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;->release(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :cond_1d
    :goto_10
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v2, :cond_1f

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v2, v15, :cond_1e

    iget v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1f

    :cond_1e
    move v4, v3

    goto :goto_11

    :cond_1f
    return-void

    :cond_20
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_21

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_21
    return-void
.end method

.method public final addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 4

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object p2, p2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v3, :cond_2

    int-to-float p0, p2

    iput p0, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_2

    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    int-to-float p0, p2

    iput p0, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/2addr p2, v2

    int-to-float p2, p2

    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iget-object p2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iget-object p2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    iput-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    int-to-float p2, p2

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    iput p2, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iput-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    :goto_2
    return-void
.end method

.method public final addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    iput p3, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v2, p1, p3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)V

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    iget-object p3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final addRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    :goto_0
    iget-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    :cond_7
    return-void
.end method

.method public final computeValues()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final createErrorVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, p1, v1

    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    iget-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    iput-object v0, p1, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    iget v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    return-object v0
.end method

.method public final createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable()V

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v0, p1

    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    if-gt p1, v3, :cond_3

    iget-object v3, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    sget-object p0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object p0, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    iget-object p0, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, p0, p1

    :cond_5
    return-object v0
.end method

.method public final createRow()Landroidx/constraintlayout/core/ArrayRow;
    .locals 5

    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, p0, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    iget v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v2, v3, v1

    iput v1, v0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    check-cast v4, Landroidx/constraintlayout/core/ArrayRow;

    if-nez v4, :cond_1

    new-instance v4, Landroidx/constraintlayout/core/ArrayRow;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    goto :goto_1

    :cond_1
    iput-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object p0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->clear()V

    const/4 p0, 0x0

    iput p0, v4, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    const/4 p0, 0x0

    iput-boolean p0, v4, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    :goto_1
    return-object v4
.end method

.method public final createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object p0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, p0, v1

    return-object v0
.end method

.method public final increaseTableSize()V
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTableSize:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    return-void
.end method

.method public final minimize()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/ArrayRow;)V

    :goto_1
    return-void
.end method

.method public final minimizeGoal(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_d

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_2
    iget v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v9, v13, :cond_9

    iget-object v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v13, v13, v9

    iget-object v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v14, v14, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v14, v5, :cond_1

    goto :goto_6

    :cond_1
    iget-boolean v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v14, :cond_2

    goto :goto_6

    :cond_2
    iget v14, v13, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    cmpg-float v14, v14, v4

    if-gez v14, :cond_8

    iget-object v14, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v14

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_8

    iget-object v1, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    iget-object v6, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v6

    cmpg-float v16, v6, v4

    if-gtz v16, :cond_3

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v7, 0x9

    if-ge v4, v7, :cond_7

    iget-object v7, v1, Landroidx/constraintlayout/core/SolverVariable;->mStrengthVector:[F

    aget v7, v7, v4

    div-float/2addr v7, v6

    cmpg-float v17, v7, v8

    if-gez v17, :cond_4

    if-eq v4, v12, :cond_5

    :cond_4
    if-le v4, v12, :cond_6

    :cond_5
    iget v8, v1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move v12, v4

    move v11, v8

    move v10, v9

    move v8, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v1, -0x1

    if-eq v10, v1, :cond_a

    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v4, v4, v10

    iget-object v6, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v11

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v1, v4, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    invoke-virtual {v1, v0, v4}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/ArrayRow;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    return-void
.end method

.method public final optimize(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    :goto_1
    if-nez v3, :cond_e

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_1

    return-void

    :cond_1
    iget-object v6, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v6, :cond_2

    iget-object v7, v0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput-boolean v5, v7, v6

    :cond_2
    iget-object v6, v0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/ArrayRow;->getPivotCandidate([Z)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v8, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v9, v7, v8

    if-eqz v9, :cond_3

    return-void

    :cond_3
    aput-boolean v5, v7, v8

    :cond_4
    if-eqz v6, :cond_c

    const/4 v5, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v2

    move v9, v5

    :goto_2
    iget v10, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v8, v10, :cond_b

    iget-object v10, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v10, v10, v8

    iget-object v11, v10, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v11, v11, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v12, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v11, v12, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v11, v10, Landroidx/constraintlayout/core/ArrayRow;->mIsSimpleDefinition:Z

    if-eqz v11, :cond_6

    goto :goto_5

    :cond_6
    iget-object v11, v10, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    iget v12, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_8

    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_3
    if-eq v12, v14, :cond_7

    iget v2, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCurrentSize:I

    if-ge v15, v2, :cond_7

    iget-object v2, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v12

    iget v13, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v2, v13, :cond_9

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v12, v2, v12

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    if-eqz v13, :cond_a

    iget-object v2, v10, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v2

    const/4 v11, 0x0

    cmpg-float v11, v2, v11

    if-gez v11, :cond_a

    iget v10, v10, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    neg-float v10, v10

    div-float/2addr v10, v2

    cmpg-float v2, v10, v7

    if-gez v2, :cond_a

    move v9, v8

    move v7, v10

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    if-le v9, v5, :cond_d

    iget-object v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v2, v9

    iget-object v7, v2, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v5, v2, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    iput v9, v5, Landroidx/constraintlayout/core/SolverVariable;->mDefinitionId:I

    invoke-virtual {v5, v0, v2}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_6

    :cond_c
    move v3, v5

    :cond_d
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public final releaseRows()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;->release(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v3, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    if-le v4, v5, :cond_2

    array-length v4, v3

    :cond_2
    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget v7, v1, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    iget-object v8, v1, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput-object v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    iget-object v1, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/PriorityGoalRow;

    iput v0, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    move v1, v0

    :goto_2
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    invoke-direct {v0, v2}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/ArrayRow;

    return-void
.end method
