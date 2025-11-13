.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSelectHighlightingAnimation"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FROM_X:F = 1.0f

.field private static final blacklist DEFAULT_FROM_Y:F = 1.0f

.field private static final blacklist DEFAULT_TO_X:F = 1.08f

.field private static final blacklist DEFAULT_TO_Y:F = 1.08f


# instance fields
.field private blacklist mFromX:F

.field private blacklist mFromY:F

.field private blacklist mHalfOfAnimationPassed:Z

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mToX:F

.field private blacklist mToY:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    const v1, 0x3f8a3d71    # 1.08f

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method

.method private blacklist switchToScaleDown()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method


# virtual methods
.method blacklist computeAnimation(J)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    :cond_0
    return-void
.end method

.method blacklist getTransformation(Landroid/view/animation/Transformation;)V
    .locals 8

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float v3, v5, v6

    :cond_2
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float v4, v2, v5

    :cond_4
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method blacklist setScaleUpParameters(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iput p5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    iput p6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    return-void
.end method

.method blacklist setStartAndDuration(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mStartTime:J

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    if-nez p1, :cond_0

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    :cond_0
    return-void
.end method
