.class public final Lcom/android/systemui/classifier/DistanceClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

.field public mDistanceDirty:Z

.field public final mHorizontalFlingThresholdPx:F

.field public final mHorizontalSwipeThresholdPx:F

.field public final mVelocityToDistanceMultiplier:F

.field public final mVerticalFlingThresholdPx:F

.field public final mVerticalSwipeThresholdPx:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-string p1, "brightline_falsing_distance_velcoity_to_distance"

    const/high16 v0, 0x41f00000    # 30.0f

    const-string/jumbo v1, "systemui"

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    const-string p1, "brightline_falsing_distance_horizontal_fling_threshold_in"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    const-string v0, "brightline_falsing_distance_vertical_fling_threshold_in"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p2, v1, v0, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    const-string v2, "brightline_falsing_distance_horizontal_swipe_threshold_in"

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    const-string v3, "brightline_falsing_distance_screen_fraction_max_distance"

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, v1, v3, v5}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget v3, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget v1, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    mul-float/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget v1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    mul-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    mul-float/2addr v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    mul-float/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    return-void
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    move-result-object p1

    iget v0, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    iget v1, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    iget v2, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    mul-float/2addr v0, v2

    iget p1, p1, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_0
    invoke-static {v2, v3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getReason$1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    :goto_2
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public final getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    new-instance v0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/DistanceClassifier;FFFF)V

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v2, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v5, v1, v2

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v6, v1, v0

    new-instance v0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/DistanceClassifier;FFFF)V

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    return-object p0
.end method

.method public final getReason$1()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalFlingThresholdPx:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "{distanceVectors=%s, isHorizontal=%s, velocityToDistanceMultiplier=%f, horizontalFlingThreshold=%f, verticalFlingThreshold=%f, horizontalSwipeThreshold=%f, verticalSwipeThreshold=%s}"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/classifier/DistanceClassifier;->mDistanceDirty:Z

    return-void
.end method
