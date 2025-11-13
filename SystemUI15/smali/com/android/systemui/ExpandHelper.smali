.class public final Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# static fields
.field public static final VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;


# instance fields
.field public final mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentHeight:F

.field public mEnabled:Z

.field public mEventSource:Landroid/view/View;

.field public mExpanding:Z

.field public mExpansionStyle:I

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mGravity:I

.field public mInitialTouchFocusY:F

.field public mInitialTouchSpan:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mLastFocusY:F

.field public mLastMotionY:F

.field public mLastSpanY:F

.field public mNaturalHeight:F

.field public mOldHeight:F

.field public mOnlyMovements:Z

.field public final mPullGestureMinXSpan:F

.field public mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mSGD:Landroid/view/ScaleGestureDetector;

.field public final mScaleAnimation:Landroidx/core/animation/ObjectAnimator;

.field public final mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

.field public final mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field public mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

.field public final mSlopMultiplier:F

.field public mSmallSize:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWatchingForPull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/ExpandHelper$1;

    const-string v1, "ViewScalerHeight"

    invoke-direct {v0, v1}, Lcom/android/systemui/ExpandHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    new-instance p2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {p2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/16 p3, 0x30

    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    new-array p3, v0, [F

    const/4 v0, 0x0

    aput v0, p3, p4

    sget-object p4, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    invoke-static {p2, p4, p3}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroidx/core/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d12

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    new-instance p2, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const p3, 0x3e99999a    # 0.3f

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    return-void
.end method


# virtual methods
.method public final findView$1(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v0, v2, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    aget v0, v2, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final finishExpanding(FZZ)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v0, v1, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v4, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v6, v1, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v6, v6

    cmpl-float v7, v5, v6

    if-nez v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    const/4 v8, 0x0

    if-nez p2, :cond_6

    if-eqz v7, :cond_4

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    cmpl-float v5, p1, v8

    if-ltz v5, :cond_3

    :cond_2
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_2

    :cond_4
    cmpl-float v5, v4, v5

    if-gez v5, :cond_2

    cmpl-float v5, p1, v8

    if-lez v5, :cond_3

    goto :goto_1

    :goto_2
    iget v9, v1, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v6, v9, v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    or-int/2addr v5, v6

    goto :goto_4

    :cond_6
    xor-int/lit8 v5, v7, 0x1

    :goto_4
    iget-object v6, v1, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroidx/core/animation/ObjectAnimator;

    iget-boolean v9, v6, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v9, v1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->expansionStateChanged(Z)V

    iget-object v10, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object v11, v10, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v12, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v11

    if-eqz v5, :cond_8

    :goto_5
    int-to-float v11, v11

    goto :goto_6

    :cond_8
    iget v11, v1, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_5

    :goto_6
    cmpl-float v12, v11, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_10

    iget-boolean v14, v1, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v14, :cond_10

    if-eqz p3, :cond_10

    new-array v0, v3, [F

    aput v11, v0, v2

    invoke-virtual {v6, v0}, Landroidx/core/animation/ObjectAnimator;->setFloatValues([F)V

    invoke-virtual {v6}, Landroidx/core/animation/ObjectAnimator;->initAnimation$1()V

    iget-object v0, v6, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    move-object v9, v13

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    :goto_7
    if-eqz v9, :cond_d

    iget-object v0, v6, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v10, v0

    move v12, v2

    :goto_8
    if-ge v12, v10, :cond_d

    iget-object v0, v6, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v0, v0, v12

    iget-object v14, v0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v14, Landroidx/core/animation/KeyframeSet;

    iget-object v14, v14, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/core/animation/Keyframe;

    const-string v15, "PropertyValuesHolder"

    iget-object v2, v0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v9}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    goto :goto_b

    :cond_a
    :try_start_0
    iget-object v2, v0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_b

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v8, Landroidx/core/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v3, "get"

    invoke-virtual {v0, v2, v8, v3, v13}, Landroidx/core/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_b

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_b
    iget-object v0, v0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :goto_9
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    move v2, v3

    :goto_c
    add-int/2addr v12, v2

    move v3, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    iget-object v0, v1, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-instance v2, Lcom/android/systemui/ExpandHelper$3;

    invoke-direct {v2, v1, v0, v5, v7}, Lcom/android/systemui/ExpandHelper$3;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;ZZ)V

    invoke-virtual {v6, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    :goto_d
    if-ne v5, v3, :cond_f

    move/from16 v2, p1

    :cond_f
    iget-object v0, v1, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v3, v11, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0, v4, v11, v2, v3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mDuration:J

    invoke-virtual {v6, v2, v3}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)Landroidx/core/animation/Animator;

    iget-object v0, v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties$$ExternalSyntheticLambda0;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v2, v6, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-virtual {v6}, Landroidx/core/animation/ObjectAnimator;->start()V

    const/4 v3, 0x0

    goto :goto_e

    :cond_10
    if-eqz v12, :cond_11

    iget-object v2, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int v3, v11

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    iput v11, v10, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    :cond_11
    iget-object v2, v1, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v9, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserExpandedChild(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    iput-object v13, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_12
    :goto_e
    iput-boolean v3, v1, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    iput v3, v1, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    return-void
.end method

.method public finishExpanding(ZF)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    return-void
.end method

.method public getScaleAnimation()Landroidx/core/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final isInside(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    new-array v3, v1, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, v3, v0

    int-to-float p0, p0

    add-float/2addr p2, p0

    aget p0, v3, v2

    int-to-float p0, p0

    add-float/2addr p3, p0

    :cond_1
    new-array p0, v1, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p0, v0

    int-to-float v1, v1

    sub-float/2addr p2, v1

    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    const/4 p0, 0x0

    cmpl-float v1, p2, p0

    if-lez v1, :cond_4

    cmpl-float p0, p3, p0

    if-lez p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    and-int/2addr p0, p1

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public final maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    return v5

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    return v5

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x3

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_7

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-ne v3, v5, :cond_5

    int-to-float v3, v4

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_5
    int-to-float v3, v4

    :goto_0
    cmpl-float v3, v0, v3

    if-lez v3, :cond_d

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_8

    move v1, v5

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    if-eqz v0, :cond_b

    int-to-float v4, v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    move v5, v1

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    int-to-float v0, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/ExpandHelper;->findView$1(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    return v1

    :cond_1
    const/4 v4, 0x1

    if-eqz v0, :cond_11

    const/4 v2, 0x3

    if-eq v0, v4, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_9

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-ne v3, v4, :cond_4

    int-to-float v3, v5

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    mul-float/2addr v3, v5

    goto :goto_0

    :cond_4
    int-to-float v3, v5

    :goto_0
    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v2

    cmpg-float v5, v0, v3

    if-gez v5, :cond_7

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_2
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_8

    move v3, v5

    :cond_8
    cmpl-float v5, v0, v5

    if-lez v5, :cond_9

    move v5, v4

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    move v5, v4

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v2, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int v6, v3

    invoke-virtual {v2, v6, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iput v3, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz v5, :cond_b

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->expansionStateChanged(Z)V

    goto :goto_4

    :cond_b
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->expansionStateChanged(Z)V

    :goto_4
    return v4

    :cond_c
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    return v4

    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_6

    :cond_f
    :goto_5
    move v0, v4

    :goto_6
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_10

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    if-eqz v0, :cond_12

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v4

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    int-to-float v0, v2

    int-to-float v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->findView$1(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    :cond_13
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_14

    move v1, v4

    :cond_14
    return v1
.end method

.method public startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    iget-boolean p2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->expansionStateChanged(Z)V

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iput-object p1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->canChildBeExpanded(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object p2, p2, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    :goto_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return v0
.end method

.method public final trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_1
    return-void
.end method

.method public updateExpansion()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v3

    add-float/2addr v4, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v0

    cmpg-float v1, v2, v0

    if-gez v1, :cond_1

    move v2, v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v2, v0

    if-lez v1, :cond_2

    move v2, v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int v3, v2

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iput v2, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    return-void
.end method
