.class public final Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDeltaTime:J

.field public mEffectiveRampDown:I

.field public mRampDownDuration:I

.field public mRampUpDuration:I

.field public mStartTime:J

.field public mStopTime:J

.field public mStopValue:F

.field public mTargetVelocityX:F

.field public mTargetVelocityY:F


# virtual methods
.method public final getValueAt(J)F
    .locals 8

    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v2, :cond_2

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v4

    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v1, v6, v0

    long-to-float p1, p1

    iget p0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1, v3, v6}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    move-result p0

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1, v3, v6}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    return p0
.end method
