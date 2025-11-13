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

.field protected blacklist mViewToRemoveFg:Landroid/view/View;

.field private blacklist upX:F

.field private blacklist upY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    .line 63
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    .line 67
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->VELOCITY_UNITS:I

    .line 69
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    .line 58
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    .line 71
    sget v2, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    .line 73
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 77
    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    .line 92
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 124
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 126
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 128
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 130
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    return-void
.end method

.method private blacklist addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 442
    return-void
.end method

.method private blacklist calculateDistanceX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 449
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 455
    .local v0, "diff":F
    return v0
.end method

.method private blacklist findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "foregroundView":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 139
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 140
    .local v2, "firstPosition":I
    sub-int v3, v1, v2

    .line 141
    .local v3, "wantedChild":I
    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 147
    .local v4, "itemView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 148
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 152
    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_0
    move-object v0, v4

    .line 161
    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist getCurrentSweepDirection(I)Ljava/lang/String;
    .locals 1
    .param p1, "sweepDirection"    # I

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "sSweepDirection":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 540
    const-string v0, "No direction"

    goto :goto_0

    .line 536
    :pswitch_0
    const-string v0, "Right to Left"

    .line 537
    goto :goto_0

    .line 532
    :pswitch_1
    const-string v0, "Left to Right"

    .line 533
    nop

    .line 544
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 385
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    .line 392
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 398
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removePendingCallbacks()V

    .line 403
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_0
    return v1
.end method

.method private blacklist handleTouchDownEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    return v1

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    .line 265
    if-nez v0, :cond_1

    .line 270
    return v1

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 275
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    .line 276
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    .line 290
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionDown(Landroid/view/MotionEvent;)V

    .line 295
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist handleTouchMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 301
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    .line 302
    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 303
    :cond_0
    return v1

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 307
    iget-boolean v0, v0, Landroid/widget/ListView;->mSemFastScrollEffectState:Z

    .line 308
    .local v0, "fastScrollOpened":Z
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->semGetLastScrollState()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 314
    .local v3, "isScrollStateIdle":Z
    :goto_0
    if-nez v0, :cond_3

    if-nez v3, :cond_4

    .line 318
    :cond_3
    return v1

    .line 322
    .end local v0    # "fastScrollOpened":Z
    .end local v3    # "isScrollStateIdle":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    .line 325
    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    sub-float/2addr v3, v4

    .line 326
    .local v3, "deltaX":F
    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    sub-float/2addr v4, v0

    .line 328
    .local v4, "deltaY":F
    mul-float v0, v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v5, v4, v4

    .line 329
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v0, v5

    float-to-double v5, v0

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 330
    .local v5, "sqrtValue":D
    float-to-double v7, v3

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 338
    .local v7, "cosineValue":D
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 343
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 344
    return v2

    .line 347
    :cond_5
    const-wide v9, 0x3fe23d70a0000000L    # 0.5699999928474426

    cmpg-double v0, v7, v9

    if-gez v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 352
    return v2

    .line 356
    :cond_6
    return v1
.end method

.method private blacklist handleTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 361
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 363
    .local v1, "currentPointerId":I
    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sweepPatternIsIndeedFling(F)Z

    move-result v2

    .line 369
    .local v2, "isSweepPattern":Z
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V

    .line 370
    .end local v2    # "isSweepPattern":Z
    goto :goto_0

    .line 372
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchUpEvent : event.getAction() = "

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

    .line 375
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v2, :cond_1

    .line 376
    const-string v2, "handleTouchUpEvent : call onActionCancel to remove remaining sweepBitmap"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 380
    :cond_1
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    .line 382
    return-void
.end method

.method private blacklist initSweepDistanceVariables()V
    .locals 1

    .line 522
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 523
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 524
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 526
    return-void
.end method

.method private blacklist isTouchEventSkipped()Z
    .locals 2

    .line 420
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

    .line 424
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sweepPatternIsIndeedFling(F)Z
    .locals 6
    .param p1, "velocity"    # F

    .line 620
    const-string v0, "SemAbsSweepListAnimator"

    const-string v1, "***** Start sweepPatternIsIndeedFling *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : velocity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : mSweepRightDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sweepPatternIsIndeedFling : mSweepLeftDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    mul-int/lit8 v1, v1, 0x2

    .line 628
    .local v1, "minimalDistanceThreshold":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : minimalDistanceThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    const-string v4, "***** End sweepPatternIsIndeedFling *****"

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    int-to-float v5, v1

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_1

    :cond_0
    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 634
    :cond_1
    const-string/jumbo v2, "sweepPatternIsIndeedFling : SweepDistance is less than minDistance, return false #1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, 0x0

    return v0

    .line 640
    :cond_2
    const-string/jumbo v2, "sweepPatternIsIndeedFling : return true #2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 556
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const-string v2, "SemAbsSweepListAnimator"

    if-nez v0, :cond_0

    .line 558
    const-string/jumbo v0, "trackSweepDistanceAndDirection : first calling trackSweepDistanceAndDirection"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
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

    .line 561
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 564
    :cond_0
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v1, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 567
    const-string/jumbo v0, "trackSweepDistanceAndDirection : sweep to left"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 570
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 573
    const-string/jumbo v0, "trackSweepDistanceAndDirection : sweep to right"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 576
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    sub-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 581
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-eq v0, v1, :cond_6

    .line 583
    const-string/jumbo v0, "trackSweepDistanceAndDirection : SweepDirection is changed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackSweepDistanceAndDirection : changed direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->getCurrentSweepDirection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    const/4 v1, 0x0

    if-ne v0, v4, :cond_3

    .line 589
    const-string/jumbo v0, "trackSweepDistanceAndDirection : Set mSweepRightDistance = 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    goto :goto_1

    .line 592
    :cond_3
    if-nez v0, :cond_4

    .line 594
    const-string/jumbo v0, "trackSweepDistanceAndDirection : Set mSweepLeftDistance = 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 599
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 601
    aput v1, v4, v0

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 603
    .end local v0    # "i":I
    :cond_5
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 605
    const-string/jumbo v0, "trackSweepDistanceAndDirection : Clear velocityTracker"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_6
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 616
    return-void
.end method


# virtual methods
.method protected blacklist getAdjustedVelocityX([F)F
    .locals 7
    .param p1, "mHistoricalVelocities"    # [F

    .line 648
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 649
    return v1

    .line 652
    :cond_0
    const/4 v0, 0x0

    .line 653
    .local v0, "totalVelocity":F
    const/4 v2, 0x0

    .line 655
    .local v2, "totalWeight":I
    const/4 v3, 0x1

    .line 656
    .local v3, "currentWeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget v5, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    if-ge v4, v5, :cond_2

    .line 657
    iget v6, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v4

    rem-int/2addr v6, v5

    aget v5, p1, v6

    .line 658
    .local v5, "vel":F
    cmpl-float v6, v5, v1

    if-nez v6, :cond_1

    .line 659
    goto :goto_1

    .line 662
    :cond_1
    int-to-float v6, v3

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    .line 663
    add-int/2addr v2, v3

    .line 656
    .end local v5    # "vel":F
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "i":I
    :cond_2
    int-to-float v1, v2

    div-float v1, v0, v1

    return v1
.end method

.method protected blacklist getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 695
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 696
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 697
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 698
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
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

    .line 700
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    return v1

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 229
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    .line 230
    goto :goto_0

    .line 206
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->calculateDistanceX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 213
    .local v0, "xDiff":F
    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 221
    const/4 v1, 0x1

    return v1

    .line 240
    .end local v0    # "xDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 241
    goto :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 192
    .local v0, "isTouchDownValid":Z
    nop

    .line 197
    return v1

    .line 252
    .end local v0    # "isTouchDownValid":Z
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 460
    const/4 v0, 0x0

    .line 467
    .local v0, "touchConsumed":Z
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const/4 v1, 0x0

    return v1

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 495
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 496
    goto :goto_0

    .line 488
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 489
    goto :goto_0

    .line 506
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 507
    goto :goto_0

    .line 482
    :pswitch_4
    nop

    .line 518
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

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    .line 671
    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    .line 672
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 673
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 675
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 676
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 679
    return-void
.end method

.method abstract blacklist setForegroundViewResId(I)V
.end method

.method protected blacklist showForeground(Landroid/view/View;)V
    .locals 1
    .param p1, "viewForeground"    # Landroid/view/View;

    .line 683
    if-nez p1, :cond_0

    .line 684
    return-void

    .line 687
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 690
    return-void
.end method
