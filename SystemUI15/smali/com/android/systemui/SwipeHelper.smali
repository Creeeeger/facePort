.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAlreadyExecutedDragAndDrop:Z

.field public final mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field public mCanCurrViewBeDimissed:Z

.field public mDensityScale:F

.field public final mDismissPendingMap:Landroid/util/ArrayMap;

.field public final mDownLocation:[F

.field public final mFadeDependingOnAmountSwiped:Z

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFalsingThreshold:I

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialTouchPos:F

.field public mInitialTouchPosY:F

.field public mIsSwiping:Z

.field public mLongPressSent:Z

.field public mMenuRowIntercepting:Z

.field public mPagingTouchSlop:F

.field public final mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

.field public mPerpendicularInitialTouchPos:F

.field public final mSlopMultiplier:F

.field public final mSnapBackSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public mSnappingChild:Z

.field public mTouchAboveFalsingThreshold:Z

.field public final mTouchSlop:I

.field public final mTouchSlopMultiplier:F

.field public mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mTranslation:F

.field public final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SwipeHelper$Callback;Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mSnapBackSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDownLocation:[F

    new-instance v0, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSlopMultiplier:F

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlopMultiplier:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const p1, 0x7f07170f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    const p1, 0x7f050023

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    iput-object p4, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/SwipeHelper;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    new-instance p1, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const-wide/16 p3, 0x190

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    return-void
.end method


# virtual methods
.method public final cancelLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 2

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p0
.end method

.method public final dismissChild(Landroid/view/View;FLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;JZJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v8, p4

    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_1

    if-eqz p9, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v11

    cmpl-float v7, v7, v11

    if-lez v7, :cond_3

    cmpg-float v7, p2, v5

    if-ltz v7, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_5

    if-nez p9, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    instance-of v7, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v7, :cond_6

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v7, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_6

    if-nez p9, :cond_6

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    if-nez v4, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTotalTranslationLength(Landroid/view/View;)F

    move-result v2

    :goto_3
    move v5, v2

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTotalTranslationLength(Landroid/view/View;)F

    move-result v2

    neg-float v2, v2

    goto :goto_3

    :goto_5
    const-wide/16 v11, 0x0

    cmp-long v2, p7, v11

    if-nez v2, :cond_a

    if-eqz v6, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    const-wide/16 v6, 0x190

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_6

    :cond_9
    const-wide/16 v2, 0xc8

    goto :goto_6

    :cond_a
    move-wide/from16 v2, p7

    :goto_6
    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v4, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v4, p0, p1, v10}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {p0, p1, v5, v4}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v13

    if-nez v13, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->onDismissChildWithAnimationFinished()V

    return-void

    :cond_b
    if-eqz p6, :cond_c

    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_7

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v3, v13

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    :goto_7
    cmp-long v2, v8, v11

    if-lez v2, :cond_d

    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_d
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v3, p3

    invoke-direct {v2, p0, p1, v10, v3}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/util/function/Consumer;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, v13}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;JZJZ)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "mTouchedView="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_1

    const-string p2, " key="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_1
    const-string p2, "mIsSwiping="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mSnappingChild="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mLongPressSent="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mInitialTouchPos="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "mTranslation="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "mCanCurrViewBeDimissed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mMenuRowIntercepting="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mDisableHwLayers="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mDismissPendingMap: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object p2, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    return-void
.end method

.method public getEscapeVelocity()F
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getMinDismissVelocity()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    return p0
.end method

.method public getSwipeAlpha(F)F
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    sub-float/2addr v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_0
    const p0, 0x3f19999a    # 0.6f

    div-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method

.method public getTotalTranslationLength(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getTranslation(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAvailableToDragAndDrop(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p0

    if-eqz p0, :cond_1

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->isFalseGesture()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFalseGesture()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method public onChildSnappedBack(FLandroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setViewsAffectedBySwipe(Lcom/android/systemui/statusbar/notification/Roundable;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/Roundable;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeNotification$1(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public onDismissChildWithAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onDownUpdate(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_4

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v8

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v3, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v8

    if-ne v8, v5, :cond_2

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mSlopMultiplier:F

    mul-float/2addr v8, v9

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v9, v8

    if-lez v8, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->onBeginDrag(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    if-ne p1, v7, :cond_8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    invoke-virtual {v2}, Lcom/android/systemui/SwipeHelper$1;->run()V

    goto/16 :goto_3

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, v6

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v5

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/SwipeHelper;->resetSwipeStates(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    if-eqz p1, :cond_8

    return v5

    :cond_7
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mAlreadyExecutedDragAndDrop:Z

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPosY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mDownLocation:[F

    aput v0, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    aput p1, v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :cond_a
    :goto_4
    return v5
.end method

.method public onMoveUpdate(F)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v0, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "com.android.systemui.SwipeHelper"

    if-eq v0, v3, :cond_13

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    const/4 v7, 0x3

    if-eq v0, v7, :cond_13

    const/4 v7, 0x4

    if-eq v0, v7, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPosY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v9, v9, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    sget-object v10, Lcom/android/systemui/shade/ShadeViewController;->Companion:Lcom/android/systemui/shade/ShadeViewController$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    iget-object v9, v9, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-eq v9, v10, :cond_3

    sget-object v10, Lcom/android/systemui/power/shared/model/WakeSleepReason;->GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne v9, v10, :cond_4

    :cond_3
    const/high16 v9, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_0
    iget v10, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    :cond_5
    iget-boolean v9, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v9, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlop:I

    if-ne v0, v3, :cond_6

    int-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlopMultiplier:F

    mul-float/2addr v0, v2

    goto :goto_1

    :cond_6
    int-to-float v0, v2

    :goto_1
    cmpl-float v0, v8, v0

    if-gez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlop:I

    if-ne v0, v3, :cond_7

    int-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlopMultiplier:F

    mul-float/2addr v0, v2

    goto :goto_2

    :cond_7
    int-to-float v0, v2

    :goto_2
    cmpl-float v0, v7, v0

    if-ltz v0, :cond_17

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_17

    const-string v0, "prepare drag and drop CallBack"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_a
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->isAvailableToDragAndDrop(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mAlreadyExecutedDragAndDrop:Z

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    if-eqz v1, :cond_b

    new-instance v1, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v4, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->startDragAndDrop(Landroid/view/View;)V

    :cond_b
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mAlreadyExecutedDragAndDrop:Z

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->isAvailableToDragAndDrop(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mAlreadyExecutedDragAndDrop:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    if-eqz v2, :cond_d

    new-instance v2, Landroid/graphics/Point;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-direct {v2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->startDragAndDrop(Landroid/view/View;)V

    :cond_d
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mAlreadyExecutedDragAndDrop:Z

    goto/16 :goto_6

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    cmpl-float v4, v0, v5

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, p1

    cmpl-float v6, v8, p1

    if-ltz v6, :cond_10

    if-lez v4, :cond_f

    move v0, v5

    goto :goto_4

    :cond_f
    neg-float p1, v5

    move v0, p1

    goto :goto_4

    :cond_10
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_11
    int-to-float v1, v1

    cmpl-float v2, v8, v1

    if-lez v2, :cond_12

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    float-to-double v6, v0

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr v5, p1

    add-float v0, v5, v1

    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/SwipeHelper;->setTranslation(FLandroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(F)V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v7, 0x457a0000    # 4000.0f

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v8, v7

    const/16 v7, 0x3e8

    invoke-virtual {v0, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    invoke-virtual {p0, p1, v7, v0}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_5

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not isDismissGesture"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->onDragCancelled(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    :goto_5
    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_16
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    :cond_17
    :goto_6
    return v3
.end method

.method public prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final resetSwipeStates(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    or-int/2addr p1, v2

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    instance-of v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_3
    sget-object v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    :cond_4
    const/4 v4, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/systemui/SwipeHelper;->snapChildIfNeeded(Landroid/view/View;FZ)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/SwipeHelper;->onChildSnappedBack(FLandroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setTranslation(FLandroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mSnapBackSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    new-instance v4, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;

    invoke-virtual {v2}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;-><init>(Ljava/lang/String;Landroid/util/FloatProperty;)V

    invoke-virtual {v1, v4, p2, p3, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    :goto_0
    new-instance p3, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SwipeHelper;Z)V

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    iget-object p1, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final snapChildIfNeeded(Landroid/view/View;FZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p2

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/SwipeHelper;->setTranslation(FLandroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public swipedFarEnough()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public swipedFastEnough()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    cmpl-float p0, v2, p0

    const/4 v2, 0x0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    cmpl-float v0, v0, p0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-ne v0, p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public updateSwipeProgressAlpha(FLandroid/view/View;)V
    .locals 0

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateSwipeProgressFromOffset(Landroid/view/View;FZ)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_2

    cmpl-float p3, p2, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    cmpl-float p3, p2, v2

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressAlpha(FLandroid/view/View;)V

    :cond_2
    const-string p0, "SwipeHelper.invalidateGlobalRegion"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    iget p3, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p3, v0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
