.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$MeasureType;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_4

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v4, :cond_5

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v8, v6, :cond_2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v8, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v12, 0x40

    invoke-static {v2, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_a

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_a

    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v15

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-lez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    const/4 v12, 0x0

    goto :goto_7

    :cond_5
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v18

    if-eqz v18, :cond_6

    if-eqz v15, :cond_6

    const/4 v12, 0x0

    goto :goto_7

    :cond_6
    instance-of v2, v14, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    goto :goto_2

    :cond_9
    :goto_6
    const/4 v12, 0x0

    :cond_a
    :goto_7
    if-eqz v12, :cond_b

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_b

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    iput-wide v10, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    :cond_b
    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_c

    if-eq v4, v10, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v13

    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v14

    move/from16 v15, p8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v3, v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v13, :cond_f

    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_f
    if-ne v4, v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v14, :cond_10

    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_10
    if-ne v3, v10, :cond_11

    if-ne v4, v10, :cond_11

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    const/4 v12, 0x2

    goto :goto_a

    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    if-ne v3, v10, :cond_12

    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_12
    const/4 v15, 0x0

    :goto_9
    if-ne v4, v10, :cond_13

    const/4 v15, 0x1

    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v18

    and-int v2, v2, v18

    add-int/lit8 v12, v12, 0x1

    :cond_13
    :goto_a
    if-eqz v2, :cond_18

    if-ne v3, v10, :cond_14

    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    if-ne v4, v10, :cond_15

    const/4 v10, 0x1

    goto :goto_c

    :cond_15
    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v1, v15, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_e

    :cond_16
    move/from16 v14, p6

    move/from16 v15, p8

    const/4 v10, 0x0

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move/from16 v17, v2

    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    move/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_d

    :cond_17
    move/from16 v17, v2

    move v13, v14

    move v14, v15

    :cond_18
    :goto_e
    if-eqz v2, :cond_1a

    const/4 v10, 0x2

    if-eq v12, v10, :cond_19

    goto :goto_f

    :cond_19
    move/from16 p6, v2

    move-object/from16 v28, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    goto/16 :goto_1f

    :cond_1a
    :goto_f
    if-lez v6, :cond_1b

    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v10

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v6, :cond_1c

    move/from16 p6, v2

    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_10

    :cond_1c
    move/from16 p6, v2

    :goto_10
    if-lez v15, :cond_37

    const/4 v2, 0x0

    move/from16 p8, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    const/16 v18, 0x1

    goto :goto_12

    :cond_1e
    const/16 v18, 0x0

    :goto_12
    move/from16 v3, v18

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v17, v6

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    move/from16 v18, v4

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x0

    move/from16 v19, v11

    move v11, v6

    move/from16 v6, v18

    move/from16 v18, v9

    move v9, v4

    move/from16 v4, p8

    :goto_13
    if-ge v11, v15, :cond_25

    move/from16 p8, v12

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move/from16 v20, v13

    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v13, :cond_1f

    move/from16 v22, v10

    move/from16 v21, v14

    goto/16 :goto_16

    :cond_1f
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    move/from16 v21, v14

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    move/from16 v22, v10

    const/4 v10, 0x1

    invoke-direct {v0, v5, v12, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v23

    or-int v4, v4, v23

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    move/from16 v23, v4

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    if-eq v10, v13, :cond_22

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v2, :cond_21

    move/from16 v24, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v10

    if-le v10, v6, :cond_20

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v10

    move/from16 v25, v13

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v10, v13

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_14

    :cond_20
    move/from16 v25, v13

    goto :goto_14

    :cond_21
    move/from16 v24, v10

    move/from16 v25, v13

    :goto_14
    const/4 v10, 0x1

    move/from16 v23, v10

    goto :goto_15

    :cond_22
    move/from16 v24, v10

    move/from16 v25, v13

    :goto_15
    if-eq v4, v14, :cond_24

    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v3, :cond_23

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v10

    if-le v10, v9, :cond_23

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v10

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v10, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_23
    const/16 v23, 0x1

    :cond_24
    move-object v10, v12

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v13

    or-int v13, v23, v13

    move v4, v13

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, p8

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v10, v22

    goto/16 :goto_13

    :cond_25
    move/from16 v22, v10

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    const/4 v10, 0x2

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v10, :cond_34

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v15, :cond_32

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v14, :cond_27

    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_26

    goto :goto_19

    :cond_26
    move/from16 v23, v10

    goto :goto_1a

    :cond_27
    :goto_19
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_28

    move/from16 v23, v10

    goto :goto_1a

    :cond_28
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    move/from16 v23, v10

    const/16 v10, 0x8

    if-ne v14, v10, :cond_29

    goto :goto_1a

    :cond_29
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v10, :cond_2a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v10, :cond_2a

    goto :goto_1a

    :cond_2a
    instance-of v10, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_2b

    nop

    :goto_1a
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v25, v11

    move/from16 v24, v15

    goto/16 :goto_1d

    :cond_2b
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    move/from16 v24, v15

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    move/from16 v25, v11

    const/4 v11, 0x1

    invoke-direct {v0, v5, v13, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v4, v4, v16

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    move/from16 v26, v4

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    if-eq v11, v10, :cond_2e

    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v2, :cond_2d

    move/from16 v27, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    if-le v2, v6, :cond_2c

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    move-object/from16 v28, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1b

    :cond_2c
    move-object/from16 v28, v5

    goto :goto_1b

    :cond_2d
    move/from16 v27, v2

    move-object/from16 v28, v5

    :goto_1b
    const/4 v2, 0x1

    move/from16 v26, v2

    goto :goto_1c

    :cond_2e
    move/from16 v27, v2

    move-object/from16 v28, v5

    :goto_1c
    if-eq v4, v14, :cond_30

    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v3, :cond_2f

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_2f

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    :cond_2f
    const/16 v26, 0x1

    :cond_30
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v15, v2, :cond_31

    const/4 v2, 0x1

    move v4, v2

    goto :goto_1d

    :cond_31
    move/from16 v4, v26

    :goto_1d
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v23

    move/from16 v15, v24

    move/from16 v11, v25

    move/from16 v2, v27

    move-object/from16 v5, v28

    goto/16 :goto_18

    :cond_32
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v24, v15

    if-eqz v4, :cond_33

    const-string v2, "intermediate pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    const/4 v2, 0x0

    move v4, v2

    :cond_33
    add-int/lit8 v11, v25, 0x1

    move/from16 v10, v23

    move/from16 v15, v24

    move/from16 v2, v27

    move-object/from16 v5, v28

    goto/16 :goto_17

    :cond_34
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v24, v15

    if-eqz v4, :cond_38

    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v6, :cond_35

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v2, 0x1

    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v9, :cond_36

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v2, 0x1

    :cond_36
    if-eqz v2, :cond_38

    const-string v4, "3rd pass"

    invoke-direct {v0, v1, v4, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_1e

    :cond_37
    move-object/from16 v28, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v19, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v24, v15

    :cond_38
    :goto_1e
    move/from16 v2, v22

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    :goto_1f
    return-void
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    return-void
.end method
