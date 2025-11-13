.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
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

    .line 255
    const-class v0, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 266
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 267
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 268
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 269
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    .line 299
    const/4 v0, 0x0

    sput-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 445
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    nop

    .line 333
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 464
    if-eqz p3, :cond_1

    .line 465
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 467
    :cond_1
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 469
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 470
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_2

    .line 471
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 473
    :cond_2
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3

    .line 474
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 476
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 477
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .line 495
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 496
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 425
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 407
    return-void
.end method

.method private greylist-max-o cancel()V
    .locals 2

    .line 942
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 948
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 949
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 950
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 951
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 952
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 953
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 954
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 955
    return-void
.end method

.method private greylist-max-o cancelTaps()V
    .locals 2

    .line 958
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 962
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 963
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 964
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 965
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 966
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 967
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 968
    return-void
.end method

.method private greylist-max-o dispatchLongPress()V
    .locals 2

    .line 990
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 993
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 994
    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 499
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 506
    if-nez p1, :cond_0

    .line 508
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 509
    .local v0, "touchSlop":I
    move v1, v0

    .line 510
    .local v1, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 512
    .local v2, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 513
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 514
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    goto :goto_0

    .line 516
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_0
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 518
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 519
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 520
    .local v2, "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 521
    .local v3, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 522
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 523
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    .line 524
    new-instance v4, Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 526
    .end local v3    # "doubleTapSlop":I
    .local v0, "touchSlop":I
    .local v1, "doubleTapTouchSlop":I
    .local v2, "doubleTapSlop":I
    :goto_0
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 527
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 528
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 529
    return-void

    .line 500
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 972
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 973
    return v1

    .line 976
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 977
    .local v2, "deltaTime":J
    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_2

    .line 981
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 982
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 983
    .local v4, "deltaY":I
    nop

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    .line 985
    .local v5, "isGeneratedGesture":Z
    :goto_0
    if-eqz v5, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 986
    .local v7, "slopSquare":I
    :goto_1
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4

    move v1, v6

    :cond_4
    return v1

    .line 978
    .end local v0    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "isGeneratedGesture":Z
    .end local v7    # "slopSquare":I
    :cond_5
    :goto_2
    return v1
.end method

.method private blacklist recordGestureClassification(I)V
    .locals 8
    .param p1, "classification"    # I

    .line 997
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1003
    :cond_0
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1008
    :cond_1
    const/16 v0, 0xb1

    .line 1010
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iget v4, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    iget v5, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, p0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    iget v7, p0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 1014
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1008
    invoke-static {v0, v2, p1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIF)V

    .line 1017
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 1018
    return-void

    .line 1005
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 1006
    return-void

    .line 1001
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist triggerGDBoost(IF)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # F

    .line 888
    :try_start_0
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    .line 889
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 890
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 891
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 894
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1

    .line 895
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

    .line 899
    :cond_1
    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist isLongpressEnabled()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 911
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 915
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 916
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 931
    :pswitch_0
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_3

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_3

    .line 933
    :cond_1
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 934
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    .line 918
    :pswitch_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_3

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v6, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    .line 921
    :cond_2
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 923
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 925
    return v5

    .line 938
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 582
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 585
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 587
    .local v2, "action":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 588
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 591
    :cond_1
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    if-eqz v4, :cond_2

    .line 592
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

    .line 593
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    .line 596
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 598
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawX:F

    .line 599
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEventRawY:F

    .line 602
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 603
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 605
    :cond_3
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 607
    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v3

    .line 609
    .local v4, "pointerUp":Z
    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    .line 610
    .local v5, "skipIndex":I
    :goto_1
    nop

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    move v7, v3

    .line 614
    .local v7, "isGeneratedGesture":Z
    :goto_2
    const/4 v8, 0x0

    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 615
    .local v9, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 616
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_8

    .line 617
    if-ne v5, v11, :cond_7

    goto :goto_4

    .line 618
    :cond_7
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 619
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 616
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 621
    .end local v11    # "i":I
    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_9
    move v11, v10

    .line 622
    .local v11, "div":I
    :goto_5
    int-to-float v12, v11

    div-float v12, v8, v12

    .line 623
    .local v12, "focusX":F
    int-to-float v13, v11

    div-float v13, v9, v13

    .line 625
    .local v13, "focusY":F
    const/4 v14, 0x0

    .line 627
    .local v14, "handled":Z
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

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .local v19, "action":I
    .local v20, "pointerUp":Z
    .local v21, "skipIndex":I
    .local v23, "sumX":F
    .local v24, "sumY":F
    .local v28, "count":I
    .local v29, "div":I
    .local v31, "handled":Z
    goto/16 :goto_16

    .line 636
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_1
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 637
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 641
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v3, v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 643
    .local v3, "upIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 644
    .local v6, "id1":I
    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 645
    .local v15, "x1":F
    move/from16 v19, v2

    .end local v2    # "action":I
    .restart local v19    # "action":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 646
    .local v2, "y1":F
    const/16 v16, 0x0

    move/from16 v20, v4

    move/from16 v4, v16

    .local v4, "i":I
    .restart local v20    # "pointerUp":Z
    :goto_6
    if-ge v4, v10, :cond_c

    .line 647
    if-ne v4, v3, :cond_a

    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    goto :goto_7

    .line 649
    :cond_a
    move/from16 v16, v3

    .end local v3    # "upIndex":I
    .local v16, "upIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 650
    .local v3, "id2":I
    move/from16 v21, v5

    .end local v5    # "skipIndex":I
    .restart local v21    # "skipIndex":I
    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float/2addr v5, v15

    .line 651
    .local v5, "x":F
    move/from16 v18, v6

    .end local v6    # "id1":I
    .local v18, "id1":I
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    .line 653
    .local v6, "y":F
    add-float v22, v5, v6

    .line 654
    .local v22, "dot":F
    const/16 v17, 0x0

    cmpg-float v23, v22, v17

    if-gez v23, :cond_b

    .line 655
    move/from16 v23, v2

    .end local v2    # "y1":F
    .local v23, "y1":F
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 656
    goto :goto_8

    .line 654
    .end local v23    # "y1":F
    .restart local v2    # "y1":F
    :cond_b
    move/from16 v23, v2

    .line 646
    .end local v2    # "y1":F
    .end local v3    # "id2":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v22    # "dot":F
    .restart local v23    # "y1":F
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v6, v18

    move/from16 v5, v21

    move/from16 v2, v23

    goto :goto_6

    .end local v16    # "upIndex":I
    .end local v18    # "id1":I
    .end local v21    # "skipIndex":I
    .end local v23    # "y1":F
    .restart local v2    # "y1":F
    .local v3, "upIndex":I
    .local v5, "skipIndex":I
    .local v6, "id1":I
    :cond_c
    move/from16 v23, v2

    move/from16 v16, v3

    move/from16 v21, v5

    move/from16 v18, v6

    .line 659
    .end local v2    # "y1":F
    .end local v3    # "upIndex":I
    .end local v4    # "i":I
    .end local v5    # "skipIndex":I
    .end local v6    # "id1":I
    .restart local v16    # "upIndex":I
    .restart local v18    # "id1":I
    .restart local v21    # "skipIndex":I
    .restart local v23    # "y1":F
    :goto_8
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 629
    .end local v15    # "x1":F
    .end local v16    # "upIndex":I
    .end local v18    # "id1":I
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "y1":F
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_2
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 630
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 632
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 633
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 871
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_3
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 725
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_4
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_d

    .line 726
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 729
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 730
    .local v2, "motionClassification":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    .line 732
    .local v4, "hasPendingLongPress":Z
    iget v5, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v5, v12

    .line 733
    .local v5, "scrollX":F
    iget v6, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v6, v13

    .line 734
    .local v6, "scrollY":F
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v15, :cond_e

    .line 736
    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 738
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

    .line 739
    :cond_e
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v15, :cond_17

    .line 740
    iget v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v15, v12, v15

    float-to-int v15, v15

    .line 741
    .local v15, "deltaX":I
    iget v3, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v3, v13, v3

    float-to-int v3, v3

    .line 742
    .local v3, "deltaY":I
    mul-int v23, v15, v15

    mul-int v24, v3, v3

    move/from16 v25, v3

    .end local v3    # "deltaY":I
    .local v25, "deltaY":I
    add-int v3, v23, v24

    .line 743
    .local v3, "distance":I
    move/from16 v23, v8

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    goto :goto_9

    .end local v8    # "sumX":F
    .local v23, "sumX":F
    :cond_f
    iget v8, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 745
    .local v8, "slopSquare":I
    :goto_9
    move/from16 v24, v9

    const/4 v9, 0x1

    .end local v9    # "sumY":F
    .restart local v24    # "sumY":F
    if-ne v2, v9, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    .line 747
    .local v9, "ambiguousGesture":Z
    :goto_a
    if-eqz v4, :cond_11

    if-eqz v9, :cond_11

    const/16 v26, 0x1

    goto :goto_b

    :cond_11
    const/16 v26, 0x0

    .line 749
    .local v26, "shouldInhibitDefaultAction":Z
    :goto_b
    if-eqz v26, :cond_13

    .line 751
    if-le v3, v8, :cond_12

    .line 757
    move/from16 v27, v9

    .end local v9    # "ambiguousGesture":Z
    .local v27, "ambiguousGesture":Z
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v28, v10

    const/4 v10, 0x2

    .end local v10    # "count":I
    .restart local v28    # "count":I
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    move/from16 v29, v11

    .end local v11    # "div":I
    .restart local v29    # "div":I
    int-to-long v10, v9

    .line 759
    .local v10, "longPressTimeout":J
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 760
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v31, v14

    move/from16 v30, v15

    const/4 v4, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .local v30, "deltaX":I
    .restart local v31    # "handled":Z
    .local v32, "hasPendingLongPress":Z
    .local v33, "motionClassification":I
    invoke-virtual {v9, v14, v15, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    long-to-float v4, v10

    move-wide/from16 v34, v10

    .end local v10    # "longPressTimeout":J
    .local v34, "longPressTimeout":J
    iget v10, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v10

    float-to-long v10, v4

    add-long/2addr v14, v10

    .line 759
    invoke-virtual {v9, v2, v14, v15}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c

    .line 751
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .end local v34    # "longPressTimeout":J
    .restart local v2    # "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .local v10, "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_12
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 771
    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_c
    int-to-float v2, v8

    iget v4, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v4

    mul-float/2addr v2, v4

    float-to-int v8, v2

    goto :goto_d

    .line 749
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .restart local v2    # "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_13
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 774
    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_d
    if-le v3, v8, :cond_14

    .line 775
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 777
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 778
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 779
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 780
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 781
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    .line 774
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_14
    move/from16 v14, v31

    .line 785
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_e
    if-eqz v7, :cond_15

    const/4 v2, 0x0

    goto :goto_f

    :cond_15
    iget v2, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 786
    .local v2, "doubleTapSlopSquare":I
    :goto_f
    if-le v3, v2, :cond_16

    .line 787
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 789
    .end local v2    # "doubleTapSlopSquare":I
    .end local v3    # "distance":I
    .end local v8    # "slopSquare":I
    .end local v25    # "deltaY":I
    .end local v26    # "shouldInhibitDefaultAction":Z
    .end local v27    # "ambiguousGesture":Z
    .end local v30    # "deltaX":I
    :cond_16
    goto :goto_11

    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    .restart local v4    # "hasPendingLongPress":Z
    .local v8, "sumX":F
    .local v9, "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_17
    move/from16 v33, v2

    move/from16 v32, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "motionClassification":I
    .end local v4    # "hasPendingLongPress":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
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

    .line 790
    :cond_19
    :goto_10
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 791
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v1, v5, v6}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 792
    .end local v31    # "handled":Z
    .local v2, "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 793
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move v14, v2

    .line 795
    .end local v2    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_11
    move/from16 v2, v33

    const/4 v3, 0x2

    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    if-ne v2, v3, :cond_1a

    const/16 v16, 0x1

    goto :goto_12

    :cond_1a
    const/16 v16, 0x0

    :goto_12
    move/from16 v3, v16

    .line 797
    .local v3, "deepPress":Z
    if-eqz v3, :cond_2a

    if-eqz v32, :cond_2a

    .line 798
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 799
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    .line 800
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 799
    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    .line 725
    .end local v2    # "motionClassification":I
    .end local v3    # "deepPress":Z
    .end local v5    # "scrollX":F
    .end local v6    # "scrollY":F
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_1b
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    goto/16 :goto_16

    .line 808
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_5
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 809
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 810
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_1c

    .line 812
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 814
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v14, v31, v3

    .line 816
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v4, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto/16 :goto_14

    .line 818
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_1c
    const/4 v4, 0x3

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v3, :cond_1d

    .line 819
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto/16 :goto_13

    .line 821
    :cond_1d
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_1e

    .line 822
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 824
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 825
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_21

    .line 826
    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 827
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_21

    .line 828
    sget-object v3, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSTC#2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 831
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_1e
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_20

    .line 834
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 835
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 836
    .local v5, "pointerId":I
    iget v4, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 837
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 838
    .local v4, "velocityY":F
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    .line 840
    .local v8, "velocityX":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_1f

    .line 841
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_20

    .line 842
    :cond_1f
    iget-object v9, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v10, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v9, v10, v1, v8, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 844
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iget-object v9, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    if-eqz v9, :cond_21

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v9, v6, :cond_21

    .line 845
    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    const/16 v31, 0x0

    const/16 v32, 0x0

    float-to-int v9, v8

    float-to-int v10, v4

    const/high16 v35, -0x80000000

    const v36, 0x7fffffff

    const/high16 v37, -0x80000000

    const v38, 0x7fffffff

    move-object/from16 v30, v6

    move/from16 v33, v9

    move/from16 v34, v10

    invoke-virtual/range {v30 .. v38}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 847
    iget-object v6, v0, Landroid/view/GestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_14

    .line 852
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityY":F
    .end local v5    # "pointerId":I
    .end local v8    # "velocityX":F
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_20
    :goto_13
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_21
    :goto_14
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_22

    .line 853
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 856
    :cond_22
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 857
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_23

    .line 860
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 861
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 863
    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 864
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 865
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 866
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    goto/16 :goto_17

    .line 662
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .local v8, "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :pswitch_6
    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_27

    .line 663
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 664
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_24

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    :cond_24
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_26

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_26

    if-eqz v2, :cond_26

    .line 667
    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 669
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 670
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 673
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v3, v31, v3

    .line 675
    .end local v31    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v14, v3, v4

    .line 676
    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_25

    .line 677
    sget-object v3, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_25
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v4, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IF)V

    goto :goto_15

    .line 684
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_26
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    .end local v2    # "hadTapMessage":Z
    :cond_27
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_15
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 689
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 690
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_28

    .line 691
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 694
    :cond_28
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

    .line 696
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 698
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawX:F

    .line 699
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroid/view/GestureDetector;->mCurrentDownEventRawY:F

    .line 700
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mCheckLog:Z

    .line 702
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 703
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 704
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 705
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 706
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 707
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 709
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_29

    .line 710
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 712
    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 716
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 717
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v5, v8

    .line 711
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 719
    :cond_29
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 720
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 719
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 721
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    .line 722
    goto :goto_17

    .line 875
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :goto_16
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_2a
    :goto_17
    if-nez v14, :cond_2b

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_2b

    .line 876
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 878
    :cond_2b
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
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .line 549
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 550
    return-void
.end method

.method public whitelist setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .line 562
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 563
    return-void
.end method

.method public whitelist setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 539
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 540
    return-void
.end method
