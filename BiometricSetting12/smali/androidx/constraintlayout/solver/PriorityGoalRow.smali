.class public Landroidx/constraintlayout/solver/PriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;,
        Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final epsilon:F = 1.0E-4f

.field static sCache:Landroidx/constraintlayout/solver/Cache;

.field static sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;


# instance fields
.field goals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;",
            ">;"
        }
    .end annotation
.end field

.field keyedGoals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;",
            ">;"
        }
    .end annotation
.end field

.field mCache:Landroidx/constraintlayout/solver/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sCache:Landroidx/constraintlayout/solver/Cache;

    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;-><init>()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->reset()V

    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v2, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v3, v2}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    return-void
.end method

.method final create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .locals 6

    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    mul-float v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aput v3, v4, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    return-object v0
.end method

.method final find(I)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sCache:Landroidx/constraintlayout/solver/Cache;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    iget v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isSmallerThan(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    aget-object v2, v2, v3

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->toString(Landroidx/constraintlayout/solver/Cache;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v2, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getHead()I

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-ge v3, v2, :cond_3

    iget-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    sget-object v5, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;I)I

    move-result v1

    sget-object v4, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    iget v5, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/PriorityGoalRow;->find(I)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v5

    iget v6, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->value:F

    iget-object v7, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v8, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    aget-object v7, v7, v8

    if-nez v5, :cond_1

    invoke-virtual {p0, v0, v7, v6}, Landroidx/constraintlayout/solver/PriorityGoalRow;->create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v8

    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v10, v8, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v7, v6}, Landroidx/constraintlayout/solver/PriorityGoalRow;->create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->add(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)V

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isNull()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v10, v5, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v9, v9, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v9, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_2
    :goto_1
    iget v8, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    iget v9, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    iput v8, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    goto :goto_0

    :cond_3
    return-void
.end method
