.class public final Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final hold_at_100:Z

.field public final mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public final mClearsTag:I

.field public mDpositionDt:F

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastRender:J

.field public final mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mPosition:F

.field public final mSetsTag:I

.field public final mTempRec:Landroid/graphics/Rect;

.field public final mUpDuration:I

.field public final mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field public reverse:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    :cond_1
    if-nez p3, :cond_2

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    return-void
.end method


# virtual methods
.method public final mutate()V
    .locals 14

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    const/4 v9, 0x0

    iget v10, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    iget v11, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    const/4 v12, -0x1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    sub-long v6, v4, v6

    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    long-to-double v6, v6

    mul-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    const/4 v13, 0x0

    cmpg-float v0, v0, v13

    if-gez v0, :cond_0

    iput v13, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    cmpg-float v2, v2, v13

    if-gtz v2, :cond_4

    if-eq v11, v12, :cond_2

    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    if-eq v10, v12, :cond_3

    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    cmpl-float p0, p0, v13

    if-gtz p0, :cond_5

    if-eqz v0, :cond_d

    :cond_5
    iget-object p0, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    sub-long v6, v4, v6

    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    long-to-double v6, v6

    mul-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_7

    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    :cond_7
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_8

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_2

    :goto_3
    iget-object v6, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_b

    if-eq v11, v12, :cond_9

    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    if-eq v10, v12, :cond_a

    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v3, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    iget-object p0, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_d
    :goto_4
    return-void
.end method

.method public final reverse()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    return-void
.end method
