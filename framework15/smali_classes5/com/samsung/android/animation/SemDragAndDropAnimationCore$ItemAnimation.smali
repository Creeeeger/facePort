.class abstract Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemAnimation"
.end annotation


# instance fields
.field blacklist mDuration:I

.field blacklist mProgress:F

.field blacklist mStartTime:J


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist computeAnimation(J)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v2, v0

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    :cond_0
    return-void
.end method

.method blacklist getDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    return v0
.end method

.method blacklist getProgress()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    return v0
.end method

.method abstract blacklist getTransformation(Landroid/view/animation/Transformation;)V
.end method

.method blacklist isFinished()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mStartTime:J

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
