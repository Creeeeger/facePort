.class abstract Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.super Ljava/lang/Object;
.source "SemAbsSweepAnimationFilter.java"


# instance fields
.field protected blacklist mIsAnimationBack:Z


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    return-void
.end method


# virtual methods
.method abstract blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
.end method

.method abstract blacklist doMoveAction(Landroid/view/View;FI)V
.end method

.method abstract blacklist doRefresh()V
.end method

.method abstract blacklist doUpActionWhenAnimationUpdate(IF)V
.end method

.method abstract blacklist draw(Landroid/graphics/Canvas;)V
.end method

.method abstract blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
.end method

.method abstract blacklist getEndXOfActionUpAnimator()F
.end method

.method abstract blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
.end method

.method public blacklist isAnimationBack()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    return v0
.end method

.method abstract blacklist setForegroundView(Landroid/view/View;)V
.end method
