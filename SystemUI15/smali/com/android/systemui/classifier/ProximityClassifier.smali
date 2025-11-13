.class public final Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

.field public mGestureStartTimeNs:J

.field public mNear:Z

.field public mNearDurationNs:J

.field public final mPercentCoveredThreshold:F

.field public mPercentNear:F

.field public mPrevNearTimeNs:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/DistanceClassifier;Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    iput-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    const-string p1, "brightline_falsing_proximity_percent_covered_threshold"

    const p2, 0x3dcccccd    # 0.1f

    const-string/jumbo v0, "systemui"

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    return-void
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 5

    if-eqz p1, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    iget v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    cmpl-float p1, p1, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    sget-boolean v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iget v3, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p1, Lcom/android/systemui/classifier/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    sget-boolean v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iget v3, v3, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p1, Lcom/android/systemui/classifier/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/classifier/DistanceClassifier;->getReason$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v3, "{percentInProximity=%f, threshold=%f, distanceClassifier=%s}"

    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_4
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public final onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getCovered()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getTimestampNs()J

    move-result-wide v1

    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/classifier/ProximityClassifier;->update(JZ)V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    iget-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    :cond_0
    sget-boolean v3, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/systemui/classifier/ProximityClassifier;->update(JZ)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNanos()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    goto :goto_1

    :cond_4
    long-to-float p1, v5

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    :cond_5
    :goto_1
    return-void
.end method

.method public final update(JZ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    sub-long v0, p1, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    :cond_0
    if-eqz p3, :cond_1

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iput-wide p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    :cond_1
    iput-boolean p3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method
