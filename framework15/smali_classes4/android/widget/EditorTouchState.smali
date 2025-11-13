.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private blacklist mInitialDragDirectionXYRatio:F

.field private blacklist mIsOnHandle:Z

.field private blacklist mLastDownMillis:J

.field private blacklist mLastDownX:F

.field private blacklist mLastDownY:F

.field private blacklist mLastUpMillis:J

.field private blacklist mLastUpX:F

.field private blacklist mLastUpY:F

.field private blacklist mMovedEnoughForDrag:Z

.field private blacklist mMultiTapInSameArea:Z

.field private blacklist mMultiTapStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static blacklist getXYRatio(I)F
    .locals 2

    if-gtz p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_1
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist isDistanceWithin(FFFFI)Z
    .locals 4

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    mul-int v3, p4, p4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public blacklist getInitialDragDirectionXYRatio()F
    .locals 1

    iget v0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return v0
.end method

.method public blacklist getLastDownX()F
    .locals 1

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public blacklist getLastDownY()F
    .locals 1

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public blacklist getLastUpX()F
    .locals 1

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public blacklist getLastUpY()F
    .locals 1

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public blacklist isDoubleTap()Z
    .locals 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMovedEnoughForDrag()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public blacklist isMultiTap()Z
    .locals 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isMultiTapInSameArea()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOnHandle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public blacklist isTripleClick()Z
    .locals 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setIsOnHandle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return-void
.end method

.method public blacklist update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    const/16 v6, 0x2002

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v7, v9

    iget-wide v9, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iget-wide v11, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v7, v11

    if-gtz v11, :cond_2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-gtz v11, :cond_2

    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v11, v4, :cond_0

    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v11, v2, :cond_2

    if-eqz v6, :cond_2

    :cond_0
    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v11, v4, :cond_1

    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    :goto_0
    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v12

    invoke-static {v1, v2, v4, v11, v12}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_1

    :cond_2
    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_4

    :cond_3
    if-ne v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_4

    :cond_4
    if-ne v0, v2, :cond_8

    iget-boolean v1, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v6, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr v2, v6

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v7, v6

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    mul-int v9, v8, v8

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iget-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz v4, :cond_7

    cmpl-float v3, v2, v3

    if-nez v3, :cond_6

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_3

    :cond_6
    div-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :goto_3
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    :cond_7
    goto :goto_4

    :cond_8
    if-ne v0, v1, :cond_9

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput v5, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    :cond_9
    :goto_4
    return-void
.end method
