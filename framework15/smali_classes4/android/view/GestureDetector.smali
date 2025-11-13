.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I

.field private static final greylist-max-p LONGPRESS_TIMEOUT:I

.field private static final greylist-max-o LONG_PRESS:I = 0x2

.field private static final greylist-max-o SHOW_PRESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final greylist-max-o TAP:I = 0x3

.field private static final greylist-max-o TAP_TIMEOUT:I

.field private static blacklist sCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private greylist-max-o mAlwaysInBiggerTapRegion:Z

.field private greylist mAlwaysInTapRegion:Z

.field private blacklist mAmbiguousGestureMultiplier:F

.field private blacklist mCheckLog:Z

.field private greylist-max-o mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private greylist-max-o mCurrentDownEvent:Landroid/view/MotionEvent;

.field private blacklist mCurrentDownEventRawX:F

.field private blacklist mCurrentDownEventRawY:F

.field private blacklist mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private blacklist mCurrentMotionEventRawX:F

.field private blacklist mCurrentMotionEventRawY:F

.field private greylist-max-o mDeferConfirmSingleTap:Z

.field private greylist-max-o mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private greylist-max-o mDoubleTapSlopSquare:I

.field private greylist-max-o mDoubleTapTouchSlopSquare:I

.field private greylist-max-o mDownFocusX:F

.field private greylist-max-o mDownFocusY:F

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mHasRecordedClassification:Z

.field private greylist-max-o mIgnoreNextUpEvent:Z

.field private greylist-max-o mInContextClick:Z

.field private greylist-max-o mInLongPress:Z

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private greylist-max-o mIsDoubleTapping:Z

.field private greylist-max-o mIsLongpressEnabled:Z

.field private greylist-max-o mLastFocusX:F

.field private greylist-max-o mLastFocusY:F

.field private final greylist mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private greylist-max-o mMaximumFlingVelocity:I

.field private greylist mMinimumFlingVelocity:I

.field private blacklist mOverscroller:Landroid/widget/OverScroller;

.field private greylist-max-o mPreviousUpEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mStillDown:Z

.field private greylist mTouchSlopSquare:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mVelocityTrackerStrategy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz p3, :cond_1

    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_2
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    :cond_3
    iput p4, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method private greylist-max-o cancel()V
    .locals 2

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private greylist-max-o cancelTaps()V
    .locals 2

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private greylist-max-o dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    move v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    goto :goto_0

    :cond_0
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    new-instance v4, Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_0
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    if-eqz v5, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    :goto_1
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4

    move v1, v6

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private blacklist recordGestureClassification(I)V
    .locals 7

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    iget v4, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    iget v6, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/16 v4, 0xb1

    invoke-static {v4, v0, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIF)V

    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist triggerGDBoost(IF)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "GESTURE_DETECTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist isLongpressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_3

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_3

    :cond_1
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return v5

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    if-eqz v4, :cond_2

    sget-object v4, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "obtain mCurrentMotionEventRaw. action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    iget v4, v0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    invoke-static {v4}, Landroid/view/VelocityTracker;->obtain(I)Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :goto_1
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    move v7, v3

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_8

    if-ne v5, v11, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_9
    move v11, v10

    :goto_5
    int-to-float v12, v11

    div-float v12, v8, v12

    int-to-float v13, v11

    div-float v13, v9, v13

    const/4 v14, 0x0

    and-int/lit16 v15, v2, 0xff

    const/16 v6, 0x3e8

    const/4 v3, 0x2

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :pswitch_1
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v3, v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    move/from16 v19, v2

    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    const/16 v16, 0x0

    move/from16 v20, v4

    move/from16 v4, v16

    :goto_6
    if-ge v4, v10, :cond_c

    if-ne v4, v3, :cond_a

    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    goto :goto_7

    :cond_a
    move/from16 v16, v3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move/from16 v21, v5

    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float/2addr v5, v15

    move/from16 v18, v6

    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    add-float v22, v5, v6

    const/16 v17, 0x0

    cmpg-float v23, v22, v17

    if-gez v23, :cond_b

    move/from16 v23, v2

    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_8

    :cond_b
    move/from16 v23, v2

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v6, v18

    move/from16 v5, v21

    move/from16 v2, v23

    goto :goto_6

    :cond_c
    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    :goto_8
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :pswitch_2
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :pswitch_3
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :pswitch_4
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_d

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    iget v5, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v5, v12

    iget v6, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v6, v13

    iget-boolean v15, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v15, :cond_e

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v15, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v15, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    or-int/2addr v14, v15

    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    goto/16 :goto_11

    :cond_e
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v15, :cond_17

    iget v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v15, v12, v15

    float-to-int v15, v15

    iget v3, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v3, v13, v3

    float-to-int v3, v3

    mul-int v23, v15, v15

    mul-int v24, v3, v3

    move/from16 v25, v3

    add-int v3, v23, v24

    move/from16 v23, v8

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    iget v8, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    :goto_9
    move/from16 v24, v9

    const/4 v9, 0x1

    if-ne v2, v9, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :goto_a
    if-eqz v4, :cond_11

    if-eqz v9, :cond_11

    const/16 v26, 0x1

    goto :goto_b

    :cond_11
    const/16 v26, 0x0

    :goto_b
    if-eqz v26, :cond_13

    if-le v3, v8, :cond_12

    move/from16 v27, v9

    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v28, v10

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    move/from16 v29, v11

    int-to-long v10, v9

    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v30, v15

    iget-object v15, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v31, v14

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v14, 0x3

    invoke-virtual {v15, v4, v14, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v34

    long-to-float v2, v10

    iget v4, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v2, v4

    move-wide/from16 v36, v10

    float-to-long v10, v2

    add-long v10, v34, v10

    invoke-virtual {v9, v15, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c

    :cond_12
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    :goto_c
    int-to-float v2, v8

    iget v4, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    iget v9, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v9

    mul-float/2addr v2, v4

    float-to-int v8, v2

    goto :goto_d

    :cond_13
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    :goto_d
    if-le v3, v8, :cond_14

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    :cond_14
    move/from16 v14, v31

    :goto_e
    if-eqz v7, :cond_15

    const/4 v2, 0x0

    goto :goto_f

    :cond_15
    iget v2, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    :goto_f
    if-le v3, v2, :cond_16

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    :cond_16
    goto :goto_11

    :cond_17
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_19

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_18

    goto :goto_10

    :cond_18
    move/from16 v14, v31

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move v14, v2

    :goto_11
    move/from16 v2, v33

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v16, 0x1

    goto :goto_12

    :cond_1a
    const/16 v16, 0x0

    :goto_12
    move/from16 v3, v16

    if-eqz v3, :cond_29

    if-eqz v32, :cond_29

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    :cond_1b
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    :pswitch_5
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v14, v31, v3

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v4, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto/16 :goto_14

    :cond_1c
    const/4 v4, 0x3

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto/16 :goto_13

    :cond_1d
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_21

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_14

    :cond_1e
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_20

    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v4, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_1f

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_20

    :cond_1f
    iget-object v9, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v10, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v9, v10, v1, v8, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    iget-object v9, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    if-eqz v9, :cond_21

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v9, v6, :cond_21

    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    float-to-int v9, v8

    float-to-int v10, v4

    const/high16 v37, -0x80000000

    const v38, 0x7fffffff

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/high16 v35, -0x80000000

    const v36, 0x7fffffff

    move-object/from16 v30, v6

    move/from16 v33, v9

    move/from16 v34, v10

    invoke-virtual/range {v30 .. v38}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_14

    :cond_20
    :goto_13
    move/from16 v14, v31

    :cond_21
    :goto_14
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_22

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_22
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_23

    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_17

    :pswitch_6
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_26

    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_24
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_25

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_25

    if-eqz v2, :cond_25

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v5, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v4, v31, v4

    iget-object v5, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v5, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int v14, v4, v5

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_15

    :cond_25
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_26
    move/from16 v14, v31

    :goto_15
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_27

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_27
    sget-object v2, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "obtain mCurrentDownEvent. id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_28

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v5, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_28
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    goto :goto_17

    :goto_16
    move/from16 v14, v31

    :cond_29
    :goto_17
    if-nez v14, :cond_2a

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2a
    return v14

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    return-void
.end method

.method public whitelist setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public whitelist setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
