.class public Landroid/view/TwoFingerSwipeGestureDetector;
.super Ljava/lang/Object;
.source "TwoFingerSwipeGestureDetector.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;,
        Landroid/view/TwoFingerSwipeGestureDetector$PositionDirection;,
        Landroid/view/TwoFingerSwipeGestureDetector$GestureState;
    }
.end annotation


# static fields
.field private static final blacklist CANCELED:I = 0x4

.field public static final blacklist DOWN:I = 0x8

.field private static final blacklist DOWN_THRESHOLD_DIP:F = 20.0f

.field private static final blacklist EASY_START_THRESHOLD_DIP:F = 20.0f

.field private static final blacklist ENDED:I = 0x5

.field public static final blacklist INVALID:I = 0x0

.field public static final blacklist LEFT:I = 0x1

.field private static final blacklist POSITION_MASK:I = 0xd

.field public static final blacklist RIGHT:I = 0x4

.field private static final blacklist SIDE_THRESHOLD_DIP:F = 24.0f

.field private static final blacklist THRESHOLD_UNDEFINED:I = -0x1

.field private static final blacklist TOUCH_SLOP_DIP:F = 24.0f

.field private static final blacklist TWO_FINGER_DOWN_DETECTED:I = 0x2

.field private static final blacklist TWO_FINGER_DOWN_DETECTING:I = 0x1

.field private static final blacklist TWO_FINGER_GESTURE_COMMITTED:I = 0x3

.field private static final blacklist UNIT_PIXELS_PER_SECOND:I = 0x3e8

.field public static final blacklist UP:I = 0x2


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist DEBUG_NOISE:Z

.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mDensity:F

.field private blacklist mDetectedMotionEvent:Landroid/view/MotionEvent;

.field private final blacklist mDisplayBounds:Landroid/graphics/Rect;

.field private blacklist mDownEnabled:Z

.field private blacklist mDownThreshold:I

.field private blacklist mEasyStartThreshold:I

.field private blacklist mEndCenterX:F

.field private blacklist mEndCenterY:F

.field private final blacklist mExcludeRegion:Landroid/graphics/Region;

.field private final blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaximumFlingVelocity:I

.field private final blacklist mMinimumFlingVelocity:I

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mSideEnabled:Z

.field private blacklist mSideThreshold:I

.field private blacklist mStartCenterX:F

.field private blacklist mStartCenterY:F

.field private blacklist mStartPosition:I

.field private blacklist mState:I

.field private blacklist mTmpThresholds:[I

.field private blacklist mTouchSlopDip:F

.field private blacklist mTouchSlopSquare:F

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$uYmdY5QDLuhOqJn0fu1NxbSprXE(Landroid/view/TwoFingerSwipeGestureDetector;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->excludeRegionContains(FF)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;
    .param p3, "from"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTmpThresholds:[I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    .line 98
    iput-boolean v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 100
    const/4 v2, 0x5

    iput v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 110
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    .line 111
    iput-boolean v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    .line 117
    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    .line 118
    if-nez p1, :cond_2

    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    .line 120
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinimumFlingVelocity:I

    goto :goto_1

    .line 122
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 123
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    .line 124
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMinimumFlingVelocity:I

    .line 128
    .end local v1    # "vc":Landroid/view/ViewConfiguration;
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private blacklist actionToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 575
    const-string v0, ""

    return-object v0

    .line 569
    :pswitch_0
    const-string v0, "Pointer Up"

    return-object v0

    .line 565
    :pswitch_1
    const-string v0, "Pointer Down"

    return-object v0

    .line 571
    :pswitch_2
    const-string v0, "Outside"

    return-object v0

    .line 573
    :pswitch_3
    const-string v0, "Cancel"

    return-object v0

    .line 563
    :pswitch_4
    const-string v0, "Move"

    return-object v0

    .line 567
    :pswitch_5
    const-string v0, "Up"

    return-object v0

    .line 561
    :pswitch_6
    const-string v0, "Down"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 399
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 400
    .local v0, "count":I
    const/4 v1, 0x1

    .line 401
    .local v1, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 402
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    and-int/2addr v1, v3

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private blacklist commitIfPossible(FF)Z
    .locals 4
    .param p1, "curCenterX"    # F
    .param p2, "curCenterY"    # F

    .line 315
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->getDirection(FFFF)I

    move-result v0

    .line 316
    .local v0, "direction":I
    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-direct {p0, v1, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->gestureFrom(II)I

    move-result v1

    .line 317
    .local v1, "gestureFrom":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 318
    iget-boolean v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v3, "ActionMOVE: gestureFrom not found."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 321
    :cond_1
    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->committed(I)V

    .line 322
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist committed(I)V
    .locals 3
    .param p1, "gestureFrom"    # I

    .line 424
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "committed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 426
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 428
    invoke-direct {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 429
    return-void
.end method

.method private blacklist detected()V
    .locals 2

    .line 418
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "detected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 420
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 421
    return-void
.end method

.method private blacklist detecting()V
    .locals 2

    .line 412
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "detecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 414
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 415
    return-void
.end method

.method private blacklist end()V
    .locals 2

    .line 442
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 444
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 445
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 449
    :cond_1
    return-void
.end method

.method private blacklist excludeRegionContains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 408
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method private blacklist gestureFrom(II)I
    .locals 3
    .param p1, "startPosition"    # I
    .param p2, "direction"    # I

    .line 461
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 462
    return v2

    .line 464
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 465
    const/4 v0, 0x3

    return v0

    .line 467
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 468
    return v1

    .line 470
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 452
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 453
    .local v0, "sum":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 454
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v0, v3

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    :cond_0
    int-to-float v2, v1

    div-float v2, v0, v2

    return v2
.end method

.method private blacklist getDirection(FFFF)I
    .locals 4
    .param p1, "sX"    # F
    .param p2, "sY"    # F
    .param p3, "eX"    # F
    .param p4, "eY"    # F

    .line 494
    sub-float v0, p3, p1

    .line 495
    .local v0, "dX":F
    sub-float v1, p4, p2

    .line 496
    .local v1, "dY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 497
    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    return v2

    .line 499
    :cond_1
    cmpg-float v2, v1, v3

    if-gez v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    return v2
.end method

.method private blacklist getEasyThresholdBasedStartPos(III[I)V
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "startCenterX"    # I
    .param p3, "startCenterY"    # I
    .param p4, "tmpThresholds"    # [I

    .line 298
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    .local v0, "max":I
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 301
    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyStartThreshold:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 302
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 303
    const/4 v2, 0x0

    add-int v3, v1, p2

    aput v3, p4, v2

    .line 305
    :cond_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, p4, v2

    .line 308
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 309
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyStartThreshold:I

    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p3

    add-int/2addr v2, v3

    aput v2, p4, v1

    .line 312
    :cond_2
    return-void
.end method

.method private blacklist isInThreshold(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "threshold"    # I
    .param p4, "position"    # I

    .line 354
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 355
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v1

    .line 356
    :cond_1
    const/4 v0, 0x1

    sparse-switch p4, :sswitch_data_0

    .line 366
    return v1

    .line 362
    :sswitch_0
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p3

    if-ge v2, p2, :cond_2

    move v1, v0

    :cond_2
    return v1

    .line 360
    :sswitch_1
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    if-ge v2, p1, :cond_3

    move v1, v0

    :cond_3
    return v1

    .line 358
    :sswitch_2
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    if-le v2, p1, :cond_4

    move v1, v0

    :cond_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist isOverThreshold(FF[II)Ljava/lang/Boolean;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "thresholds"    # [I
    .param p4, "position"    # I

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "isOver":Z
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 374
    :cond_0
    and-int/lit8 v1, p4, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aget v4, p3, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 377
    :cond_2
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_4

    .line 378
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget v4, p3, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    .line 380
    :cond_4
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_6

    .line 381
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x2

    aget v4, p3, v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_5

    move v2, v3

    :cond_5
    or-int/2addr v0, v2

    .line 383
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isOverTouchSlop(FFFF)Z
    .locals 5
    .param p1, "prevX"    # F
    .param p2, "prevY"    # F
    .param p3, "curX"    # F
    .param p4, "curY"    # F

    .line 289
    sub-float v0, p3, p1

    float-to-int v0, v0

    .line 290
    .local v0, "deltaX":I
    sub-float v1, p4, p2

    float-to-int v1, v1

    .line 291
    .local v1, "deltaY":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    .line 292
    .local v2, "distanceSquare":I
    int-to-float v3, v2

    iget v4, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist isStartPositionEnabled(I)Z
    .locals 1
    .param p1, "startPosition"    # I

    .line 387
    sparse-switch p1, :sswitch_data_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 392
    :sswitch_0
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    return v0

    .line 390
    :sswitch_1
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist isTwoFingerVelocitiesSameDirection(Landroid/view/MotionEvent;I)Z
    .locals 13
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerCount"    # I

    .line 326
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 329
    .local v0, "upIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 330
    .local v1, "id1":I
    iget-object v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 331
    .local v2, "x1":F
    iget-object v3, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 332
    .local v3, "y1":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 333
    if-ne v4, v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 336
    .local v5, "id2":I
    iget-object v6, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 337
    .local v6, "x2":F
    iget-object v7, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    .line 339
    .local v7, "y2":F
    mul-float v8, v2, v6

    mul-float v9, v3, v7

    add-float/2addr v8, v9

    .line 340
    .local v8, "dot":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    .line 341
    iget-object v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 342
    iget-boolean v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 343
    iget-object v9, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dot product is negative. id1=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") id2=("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    const/4 v9, 0x0

    return v9

    .line 332
    .end local v5    # "id2":I
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    .end local v8    # "dot":F
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method static synthetic blacklist lambda$committed$0(ILandroid/view/TwoFingerSwipeGestureDetector$GestureListener;)V
    .locals 0
    .param p0, "gestureFrom"    # I
    .param p1, "listener"    # Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;

    .line 426
    invoke-interface {p1, p0}, Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;->onCommitted(I)V

    return-void
.end method

.method private blacklist setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .line 510
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    .line 511
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->updateDipResources(F)V

    .line 512
    return-void
.end method

.method private blacklist setTouchSlopSquare(I)V
    .locals 1
    .param p1, "touchSlop"    # I

    .line 536
    mul-int v0, p1, p1

    int-to-float v0, v0

    iput v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    .line 537
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 4

    .line 432
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    iput v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    .line 437
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 438
    invoke-direct {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 439
    return-void

    .line 433
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .locals 2
    .param p1, "excludedRegion"    # Landroid/graphics/Region;

    .line 552
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda6;-><init>(Landroid/graphics/Region;)V

    invoke-direct {p0, v0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPosition(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string v2, "display bounds is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v0

    .line 480
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    or-int/lit8 v0, v0, 0x1

    .line 483
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    or-int/lit8 v0, v0, 0x4

    .line 486
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isStartPositionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/view/TwoFingerSwipeGestureDetector;->isInThreshold(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    or-int/lit8 v0, v0, 0x8

    .line 489
    :cond_3
    return v0
.end method

.method public blacklist init(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p2, "density"    # F
    .param p3, "enabledPosition"    # I

    .line 504
    invoke-direct {p0, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->setDensity(F)V

    .line 505
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->setDisplayBounds(Landroid/graphics/Rect;)V

    .line 506
    invoke-virtual {p0, p3}, Landroid/view/TwoFingerSwipeGestureDetector;->setGestureSearchSide(I)V

    .line 507
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_1d

    .line 143
    move-object v2, v1

    check-cast v2, Landroid/view/MotionEvent;

    .line 144
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 145
    .local v3, "action":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 146
    .local v4, "pointerCount":I
    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pointerCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    if-nez v3, :cond_2

    .line 151
    invoke-direct/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->detecting()V

    .line 152
    iget-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 155
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 156
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    .line 157
    return-void

    .line 160
    :cond_2
    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 161
    return-void

    .line 164
    :cond_3
    const/4 v5, 0x3

    if-ne v5, v3, :cond_4

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 166
    return-void

    .line 169
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_6

    .line 170
    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pointer count over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 172
    return-void

    .line 175
    :cond_6
    iget-object v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 177
    const-string/jumbo v8, "prevX=%f prevY=%f curX=%f curY=%f touchSlopSquare=%f"

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v6, v3, :cond_f

    .line 178
    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v13, v11, :cond_e

    .line 179
    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    iget v14, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {v0, v13, v14, v15, v9}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverTouchSlop(FFFF)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 180
    iget-boolean v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 181
    iget-object v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 183
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v6, v12

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v6, v11

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v10

    .line 181
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 186
    return-void

    .line 188
    :cond_8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v8

    iput v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    .line 189
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v8

    iput v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    .line 190
    new-instance v8, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda3;-><init>(Landroid/view/TwoFingerSwipeGestureDetector;)V

    invoke-direct {v0, v2, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->allMatch(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 191
    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "started on gesture exclude region."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 193
    return-void

    .line 195
    :cond_a
    iget v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    float-to-int v8, v8

    iget v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    float-to-int v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/view/TwoFingerSwipeGestureDetector;->getPosition(II)I

    move-result v8

    iput v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    .line 196
    if-nez v8, :cond_c

    .line 197
    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 198
    iget-object v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "position invalid. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 203
    return-void

    .line 206
    :cond_c
    iget-object v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_d

    .line 207
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 209
    :cond_d
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    iput-object v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mDetectedMotionEvent:Landroid/view/MotionEvent;

    .line 211
    iget v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    iget v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterX:F

    float-to-int v9, v9

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartCenterY:F

    float-to-int v13, v13

    iget-object v14, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTmpThresholds:[I

    invoke-direct {v0, v8, v9, v13, v14}, Landroid/view/TwoFingerSwipeGestureDetector;->getEasyThresholdBasedStartPos(III[I)V

    .line 214
    invoke-direct/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->detected()V

    .line 215
    iget-boolean v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v8, :cond_e

    .line 216
    iget-object v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v12

    iget-object v12, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    aput-object v12, v9, v11

    iget-boolean v11, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 219
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v7

    iget v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    iget-boolean v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v9, v10

    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    .line 216
    const-string v5, "detected reason. events=%s, display=%s side=%b threshold=%d down=%b threshold=%d"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_e
    return-void

    .line 226
    :cond_f
    if-ne v7, v3, :cond_11

    .line 227
    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v5, v7, :cond_10

    .line 228
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v5

    .line 229
    .local v5, "curCenterX":F
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v6

    .line 230
    .local v6, "curCenterY":F
    iget-object v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTmpThresholds:[I

    iget v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverThreshold(FF[II)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 231
    invoke-direct {v0, v5, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->commitIfPossible(FF)Z

    .line 234
    .end local v5    # "curCenterX":F
    .end local v6    # "curCenterY":F
    :cond_10
    return-void

    .line 237
    :cond_11
    const/4 v9, 0x6

    if-ne v9, v3, :cond_16

    .line 238
    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v5, v7, :cond_15

    .line 239
    invoke-direct {v0, v2, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->isTwoFingerVelocitiesSameDirection(Landroid/view/MotionEvent;I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    goto :goto_2

    .line 242
    :cond_12
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 243
    .local v5, "upIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_14

    .line 244
    if-ne v6, v5, :cond_13

    goto :goto_1

    .line 245
    :cond_13
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 246
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    .line 243
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "i":I
    :cond_14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v6

    iput v6, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterX:F

    .line 249
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v6

    iput v6, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterY:F

    .line 252
    .end local v5    # "upIndex":I
    :cond_15
    :goto_2
    return-void

    .line 255
    :cond_16
    if-ne v11, v3, :cond_1d

    .line 256
    iget v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mState:I

    if-ne v9, v7, :cond_1c

    .line 257
    iget v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-direct {v0, v9, v13, v14, v15}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverTouchSlop(FFFF)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 258
    iget-boolean v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v9, :cond_17

    .line 259
    iget-object v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotX:F

    .line 261
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v6, v12

    iget v13, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mPivotY:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v6, v11

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    iget v5, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopSquare:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v10

    .line 259
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 264
    return-void

    .line 266
    :cond_18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v5}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v5

    .line 267
    .local v5, "curCenterX":F
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {v0, v2, v6}, Landroid/view/TwoFingerSwipeGestureDetector;->getCenter(Landroid/view/MotionEvent;Ljava/util/function/Function;)F

    move-result v6

    .line 268
    .local v6, "curCenterY":F
    iget-object v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTmpThresholds:[I

    iget v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->isOverThreshold(FF[II)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 269
    iget-boolean v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v7, :cond_19

    .line 270
    iget-object v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "commitIfPossible. didn\'t over threshold. sp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mStartPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " thresholds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mTmpThresholds:[I

    .line 273
    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 276
    return-void

    .line 278
    :cond_1a
    iget v7, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterX:F

    iget v8, v0, Landroid/view/TwoFingerSwipeGestureDetector;->mEndCenterY:F

    invoke-direct {v0, v7, v8}, Landroid/view/TwoFingerSwipeGestureDetector;->commitIfPossible(FF)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 281
    .end local v5    # "curCenterX":F
    .end local v6    # "curCenterY":F
    :cond_1b
    goto :goto_3

    .line 282
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/view/TwoFingerSwipeGestureDetector;->end()V

    .line 286
    .end local v2    # "me":Landroid/view/MotionEvent;
    .end local v3    # "action":I
    .end local v4    # "pointerCount":I
    :cond_1d
    :goto_3
    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->onInputEvent(Landroid/view/InputEvent;)V

    .line 139
    return-void
.end method

.method public blacklist setDebug(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 604
    iput-boolean p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    .line 605
    return-void
.end method

.method public blacklist setDebugNoise(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 600
    iput-boolean p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG_NOISE:Z

    .line 601
    return-void
.end method

.method public blacklist setDisplayBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayBounds"    # Landroid/graphics/Rect;

    .line 521
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayBounds. displayBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    return-void
.end method

.method public blacklist setDownThreshold(I)V
    .locals 0
    .param p1, "downThreshold"    # I

    .line 540
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownThreshold:I

    .line 541
    return-void
.end method

.method public blacklist setEasyStartThreshold(I)V
    .locals 0
    .param p1, "easyStartThreshold"    # I

    .line 548
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mEasyStartThreshold:I

    .line 549
    return-void
.end method

.method public blacklist setGestureExclusionRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 132
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGestureExclusionRegion. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 134
    return-void
.end method

.method public blacklist setGestureSearchSide(I)V
    .locals 5
    .param p1, "position"    # I

    .line 515
    and-int/lit8 v0, p1, 0xd

    .line 516
    .local v0, "masked":I
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideEnabled:Z

    .line 517
    and-int/lit8 v1, v0, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDownEnabled:Z

    .line 518
    return-void
.end method

.method public blacklist setSideThreshold(I)V
    .locals 0
    .param p1, "sideThreshold"    # I

    .line 544
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mSideThreshold:I

    .line 545
    return-void
.end method

.method public blacklist setTouchSlopForTest(F)V
    .locals 2
    .param p1, "touchSlopDip"    # F

    .line 60
    iput p1, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    .line 61
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopSquare(I)V

    .line 62
    return-void
.end method

.method public blacklist updateDipResources(F)V
    .locals 3
    .param p1, "density"    # F

    .line 526
    iget-boolean v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDipResources. density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 528
    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setSideThreshold(I)V

    .line 529
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v2, p1, v0

    add-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/view/TwoFingerSwipeGestureDetector;->setDownThreshold(I)V

    .line 530
    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setEasyStartThreshold(I)V

    .line 531
    iget v0, p0, Landroid/view/TwoFingerSwipeGestureDetector;->mTouchSlopDip:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopSquare(I)V

    .line 533
    :cond_1
    return-void
.end method
