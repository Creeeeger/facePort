.class public Lcom/android/internal/policy/WearGestureInterceptionDetector;
.super Ljava/lang/Object;
.source "WearGestureInterceptionDetector.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WearGestureInterceptionDetector"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mDiscardIntercept:Z

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mInstalledDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mSwiping:Z

.field private final blacklist mSwipingStartThreshold:F

.field private final blacklist mTouchSlop:F


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    iput-object p2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    return-void
.end method

.method private blacklist canScroll(Landroid/view/View;ZZFF)Z
    .locals 14

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_0
    if-ltz v6, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    int-to-float v7, v3

    add-float v7, p4, v7

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    int-to-float v7, v3

    add-float v7, p4, v7

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_1

    int-to-float v7, v4

    add-float v7, p5, v7

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    int-to-float v7, v4

    add-float v7, p5, v7

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v7, v3

    add-float v7, p4, v7

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v11, v7, v8

    int-to-float v7, v4

    add-float v7, p5, v7

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v12, v7, v8

    const/4 v9, 0x1

    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v7

    if-eqz v7, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private blacklist getIndexForValidPointer(Landroid/view/MotionEvent;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    :cond_0
    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const v1, 0x10103f3

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v3
.end method

.method private blacklist resetMembers()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    return-void
.end method

.method private blacklist updateDiscardIntercept(Landroid/view/MotionEvent;I)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    move-object v2, p0

    move v6, v0

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    :cond_3
    return-void
.end method

.method private blacklist updateSwiping(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    iget v4, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist isIntercepting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->getIndexForValidPointer(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateSwiping(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateDiscardIntercept(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    nop

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
