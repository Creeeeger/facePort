.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslateItemAnimation"
.end annotation


# instance fields
.field private blacklist mDeltaX:I

.field private blacklist mDeltaY:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mOffsetXDest:I

.field private blacklist mOffsetYDest:I


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 114
    return-void
.end method


# virtual methods
.method blacklist getCurrentTranslateX()F
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 155
    .local v0, "interpolatedProgress":F
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method blacklist getCurrentTranslateY()F
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 160
    .local v0, "interpolatedProgress":F
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method blacklist getDestOffsetX()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method blacklist getDestOffsetY()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method blacklist getTransformation(Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "outTransform"    # Landroid/view/animation/Transformation;

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 126
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 127
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 130
    .local v1, "interpolatedProgress":F
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v1

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 131
    .local v2, "translateX":F
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float v5, v5

    sub-float/2addr v4, v1

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    .line 132
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 133
    return-void
.end method

.method blacklist setStartAndDuration(F)V
    .locals 1
    .param p1, "durationMultiplicator"    # F

    .line 173
    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 174
    .local v0, "duration":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    .line 175
    return-void
.end method

.method blacklist setStartAndDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mStartTime:J

    .line 165
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDuration:I

    .line 167
    if-nez p1, :cond_0

    .line 168
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDuration:I

    .line 170
    :cond_0
    return-void
.end method

.method blacklist translate(IIII)V
    .locals 0
    .param p1, "offsetDestX"    # I
    .param p2, "deltaX"    # I
    .param p3, "offsetDestY"    # I
    .param p4, "deltaY"    # I

    .line 117
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    .line 118
    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    .line 120
    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    .line 121
    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    .line 122
    return-void
.end method
