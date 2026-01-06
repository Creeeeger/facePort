.class public Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "OptimizedPriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

.field mCache:Landroidx/constraintlayout/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    const/16 v0, 0x80

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->TABLE_SIZE:I

    new-array v1, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    new-instance v0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)[Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x0

    new-instance v4, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->reset()V

    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 9

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getHead()I

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-ge v3, v2, :cond_2

    iget-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getId(I)I

    move-result v4

    iget-object v5, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getValue(I)F

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v6, v6, v4

    iget-object v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v7, v0, v5}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v6}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    :cond_1
    iget v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    iget v8, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    iget-object v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getNextIndice(I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method
