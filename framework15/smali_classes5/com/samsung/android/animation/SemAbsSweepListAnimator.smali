.class abstract Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.super Ljava/lang/Object;
.source "SemAbsSweepListAnimator.java"


# static fields
.field private static final blacklist COSINE_VALUE_THESHOLD:F = 0.57f

.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist DEBUGGABLE_LOW:Z = true

.field private static final blacklist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final blacklist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field protected static blacklist HISTORICAL_VELOCITY_COUNT:I = 0x0

.field private static blacklist INVALID_POINTER_ID:I = 0x0

.field protected static final blacklist MOVE_DURATION:I = 0x96

.field protected static final blacklist SWIPE_DURATION:I = 0x258

.field private static final blacklist TAG:Ljava/lang/String; = "SemAbsSweepListAnimator"

.field protected static blacklist VELOCITY_UNITS:I

.field protected static blacklist sAccelDecel:Landroid/view/animation/Interpolator;

.field protected static blacklist sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist downX:F

.field private blacklist downY:F

.field protected blacklist mActivePointerId:I

.field protected blacklist mCurrentPosition:I

.field protected blacklist mDownX:F

.field protected blacklist mForegroundView:Landroid/view/View;

.field protected blacklist mForegroundViewResId:I

.field protected blacklist mHistoricalVelocities:[F

.field protected blacklist mHistoricalVelocityIndex:I

.field protected blacklist mItemPressed:Z

.field protected blacklist mListView:Landroid/widget/ListView;

.field private blacklist mPrevSweepDirection:I

.field protected blacklist mScaledTouchSlop:I

.field private blacklist mSweepDirection:I

.field private blacklist mSweepLeftDistance:F

.field private blacklist mSweepPrevPosX:F

.field private blacklist mSweepRightDistance:F

.field protected blacklist mSwiping:Z

.field protected blacklist mSwipingPosition:I

.field protected blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist upX:F

.field private blacklist upY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->VELOCITY_UNITS:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    sget v2, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    return-void
.end method

.method private blacklist addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private blacklist calculateDistanceX(Landroid/view/MotionEvent;)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private blacklist findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist getCurrentSweepDirection(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "No direction"

    goto :goto_0

    :pswitch_0
    const-string v0, "Right to Left"

    goto :goto_0

    :pswitch_1
    const-string v0, "Left to Right"

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleTouchCancelEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removePendingCallbacks()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private blacklist handleTouchDownEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionDown(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist handleTouchMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-boolean v0, v0, Landroid/widget/ListView;->mSemFastScrollEffectState:Z

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->semGetLastScrollState()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-nez v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    sub-float/2addr v3, v4

    mul-float v4, v0, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v5, v3, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    float-to-double v6, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-boolean v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v8, :cond_5

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v1, v8}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    const-wide v8, 0x3fe23d70a0000000L    # 0.5699999928474426

    cmpg-double v8, v6, v8

    if-gez v8, :cond_6

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v1, v8}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    return v2

    :cond_6
    return v1
.end method

.method private blacklist handleTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sweepPatternIsIndeedFling(F)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTouchUpEvent : event.getAction() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentPointerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActivePointerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mItemPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSwiping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemAbsSweepListAnimator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "handleTouchUpEvent : call onActionCancel to remove remaining sweepBitmap"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V

    :cond_1
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    return-void
.end method

.method private blacklist initSweepDistanceVariables()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    return-void
.end method

.method private blacklist isTouchEventSkipped()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sweepPatternIsIndeedFling(F)Z
    .locals 6

    const-string v0, "***** Start sweepPatternIsIndeedFling *****"

    const-string v1, "SemAbsSweepListAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : velocity ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : mSweepRightDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : mSweepLeftDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    mul-int/lit8 v0, v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : minimalDistanceThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    const-string v4, "***** End sweepPatternIsIndeedFling *****"

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    int-to-float v5, v0

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_1

    :cond_0
    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "sweepPatternIsIndeedFling : SweepDistance is less than minDistance, return false #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    const-string/jumbo v2, "sweepPatternIsIndeedFling : return true #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const-string v2, "SemAbsSweepListAnimator"

    if-nez v0, :cond_0

    const-string/jumbo v0, "trackSweepDistanceAndDirection : first calling trackSweepDistanceAndDirection"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackSweepDistanceAndDirection : mSweepPrevPosX is set to mDownX, mSweepPrevPosX = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const-string/jumbo v0, "trackSweepDistanceAndDirection : sweep to left"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const-string/jumbo v0, "trackSweepDistanceAndDirection : sweep to right"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-eq v0, v4, :cond_6

    const-string/jumbo v0, "trackSweepDistanceAndDirection : SweepDirection is changed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trackSweepDistanceAndDirection : changed direction = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    invoke-direct {p0, v4}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->getCurrentSweepDirection(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "trackSweepDistanceAndDirection : Set mSweepRightDistance = 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-nez v0, :cond_4

    const-string/jumbo v0, "trackSweepDistanceAndDirection : Set mSweepLeftDistance = 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    const-string/jumbo v0, "trackSweepDistanceAndDirection : Clear velocityTracker"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    return-void
.end method


# virtual methods
.method protected blacklist getAdjustedVelocityX([F)F
    .locals 7

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    sget v5, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    if-ge v4, v5, :cond_2

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v4

    sget v6, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v5, v6

    aget v5, p1, v5

    cmpl-float v6, v5, v1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v6, v3

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    int-to-float v1, v2

    div-float v1, v0, v1

    return v1
.end method

.method protected blacklist getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v2
.end method

.method abstract blacklist onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V
.end method

.method abstract blacklist onActionDown(Landroid/view/MotionEvent;)V
.end method

.method abstract blacklist onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V
.end method

.method abstract blacklist onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->calculateDistanceX(Landroid/view/MotionEvent;)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    return v1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    return v1

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected blacklist resetTouchState()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    return-void
.end method

.method abstract blacklist setForegroundViewResId(I)V
.end method

.method protected blacklist showForeground(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
