.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "StopLogic.java"


# instance fields
.field private mBackwards:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    return-void
.end method

.method private calcY(F)F
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    mul-float v3, v1, p1

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    return v3

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    return v0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v1, v4

    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return v0

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v0, v2

    div-float/2addr v3, v0

    sub-float/2addr v1, v3

    return v1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return v0
.end method

.method private setup(FFFFF)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    const v4, 0x38d1b717    # 1.0E-4f

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    div-float v5, v4, p3

    mul-float v6, v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    cmpg-float v8, v4, v3

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-gez v8, :cond_2

    neg-float v8, v4

    div-float v8, v8, p3

    mul-float v11, v8, v4

    div-float/2addr v11, v7

    sub-float v12, v1, v11

    mul-float v13, p3, v12

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    cmpg-float v14, v13, v2

    if-gez v14, :cond_1

    const-string v9, "backward accelerate, decelerate"

    iput-object v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float v3, v13, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v9, v13, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    add-float v9, v4, v13

    mul-float/2addr v9, v3

    div-float/2addr v9, v7

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_1
    const-string v3, "backward accelerate cruse decelerate"

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float v3, v2, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v9, v2, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    add-float v10, v4, v2

    mul-float/2addr v10, v3

    div-float/2addr v10, v7

    mul-float v3, v2, v9

    div-float/2addr v3, v7

    sub-float v7, v1, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float v7, v1, v3

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_2
    cmpl-float v8, v6, v1

    if-ltz v8, :cond_3

    const-string v8, "hard stop"

    iput-object v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    mul-float/2addr v7, v1

    div-float/2addr v7, v4

    const/4 v8, 0x1

    iput v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    return-void

    :cond_3
    sub-float v8, v1, v6

    div-float v11, v8, v4

    add-float v12, v11, v5

    cmpg-float v12, v12, p5

    if-gez v12, :cond_4

    const-string v7, "cruse decelerate"

    iput-object v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    iput v8, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput v11, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v3, v4, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    return-void

    :cond_4
    mul-float v12, p3, v1

    mul-float v13, v4, v4

    div-float/2addr v13, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    sub-float v13, v12, v4

    div-float v13, v13, p3

    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v13, v12, p3

    iput v13, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v13, v12, v2

    if-gez v13, :cond_5

    const-string v9, "accelerate decelerate"

    iput-object v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v12, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float v3, v12, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v9, v12, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    add-float v9, v4, v12

    mul-float/2addr v9, v3

    div-float/2addr v9, v7

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return-void

    :cond_5
    const-string v3, "accelerate cruse decelerate"

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput v4, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float v3, v2, v4

    div-float v3, v3, p3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v9, v2, p3

    iput v9, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    add-float v10, v4, v2

    mul-float/2addr v10, v3

    div-float/2addr v10, v7

    mul-float v3, v2, v9

    div-float/2addr v3, v7

    sub-float v7, v1, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    iput v10, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float v7, v1, v3

    iput v7, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 6

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v0, :cond_1

    neg-float v1, p3

    sub-float v2, p1, p2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    goto :goto_1

    :cond_1
    sub-float v2, p2, p1

    move-object v0, p0

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    :goto_1
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_0

    const-string v1, "backwards"

    goto :goto_0

    :cond_0
    const-string v1, "forward "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  stages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " vel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " pos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stage 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    if-ne v1, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "end stage 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sub-float/2addr p3, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p3, v0

    if-gez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stage 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-ne v1, v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "end stage 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sub-float/2addr p3, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stage 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end stage 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInterpolation(F)F
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/utils/StopLogic;->calcY(F)F

    move-result v0

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    add-float/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getVelocity()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/StopLogic;->getVelocity(F)F

    move-result v0

    return v0
.end method

.method public getVelocity(F)F
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return v0

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v2, v1, p1

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    return v1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return v0
.end method
