.class public final Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

.field public mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

.field public final mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    return-void
.end method


# virtual methods
.method public final config(FFFFFF)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    iput p1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    if-eqz p0, :cond_1

    neg-float v1, p3

    sub-float v2, p1, p2

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    goto :goto_1

    :cond_1
    sub-float v2, p2, p1

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    :goto_1
    return-void
.end method

.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public final getVelocity()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {p0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getVelocity()F

    move-result p0

    return p0
.end method
