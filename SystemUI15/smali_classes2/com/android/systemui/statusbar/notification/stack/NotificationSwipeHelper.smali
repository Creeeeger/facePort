.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;


# static fields
.field protected static final COVER_MENU_DELAY:J = 0xfa0L

.field public static final SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public final mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

.field public final mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

.field public mIsExpanded:Z

.field public mMenuExposedView:Landroid/view/View;

.field public final mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field public final mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public mPulsing:Z

.field public mTranslatingParentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SwipeDismiss"

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SwipeHelper;-><init>(Lcom/android/systemui/SwipeHelper$Callback;Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;)V

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr v1, v3

    invoke-direct {v4, v0, v3, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final dismiss(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string p1, "QPNE0006"

    invoke-static {p1, p0}, Lcom/android/systemui/util/NotificationSAUtil;->sendCancelLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public final dismissChild(Landroid/view/View;FZ)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superDismissChild(Landroid/view/View;FZ)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v0, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p3, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->handleChildViewDismissed(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "NotificationSwipeHelper"

    const-string p3, "dismissChild, but not shouldDismissQuickly"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    return-void
.end method

.method public final getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p0
.end method

.method public getEscapeVelocity()F
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    return p0
.end method

.method public getFalsingCheck()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getTotalTranslationLength(Landroid/view/View;)F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float p1, p0, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final getTranslation(Landroid/view/View;)F
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public handleMenuCoveredOrDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 9

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowMenu()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSnappedAndOnSameSide()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isWithinSnapMenuThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto/16 :goto_c

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldSnapBack()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto/16 :goto_c

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    goto/16 :goto_c

    :cond_4
    const-string v0, "NotificationSwipeHelper"

    const-string v1, "handleSwipeFromClosedState start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-interface {p4, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isTowardsMenu(F)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getEscapeVelocity()F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->canBeDismissed()Z

    move-result p1

    if-nez p1, :cond_6

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    cmpl-double p1, v5, v7

    if-ltz p1, :cond_6

    move p1, v4

    goto :goto_2

    :cond_6
    move p1, v3

    :goto_2
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    move v5, v4

    goto :goto_3

    :cond_7
    move v5, v3

    :goto_3
    if-eqz v2, :cond_9

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v3

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v4

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFarEnough()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSwipedEnoughToShowMenu()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz p1, :cond_a

    move p1, v4

    goto :goto_6

    :cond_a
    move p1, v3

    :goto_6
    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    move v2, v4

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    move-result v6

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mIsExpanded:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mPulsing:Z

    if-nez v6, :cond_c

    goto :goto_8

    :cond_c
    move v6, v3

    goto :goto_9

    :cond_d
    :goto_8
    move v6, v4

    :goto_9
    if-nez p1, :cond_f

    if-eqz v2, :cond_e

    if-eqz v6, :cond_e

    goto :goto_a

    :cond_e
    move p1, v3

    goto :goto_b

    :cond_f
    :goto_a
    move p1, v4

    :goto_b
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result v2

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->isFalseGesture()Z

    move-result p1

    if-nez p1, :cond_10

    move v3, v4

    :cond_10
    if-nez v5, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    if-eqz v2, :cond_12

    int-to-float p1, v2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    goto :goto_c

    :cond_12
    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getHasPopped()Z

    move-result p1

    if-nez p1, :cond_13

    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_13
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto :goto_c

    :cond_14
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_c
    return-void
.end method

.method public final handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : animView is pinned and long pressed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationSwipeHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEnd()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public initializeRow(Lcom/android/systemui/statusbar/notification/stack/SwipeableView;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    :cond_0
    return-void
.end method

.method public final onChildSnappedBack(FLandroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->onChildSnappedBack(FLandroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onDismissChildWithAnimationFinished()V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onDownUpdate(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->initializeRow(Lcom/android/systemui/statusbar/notification/stack/SwipeableView;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    invoke-super {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_1
    return p1
.end method

.method public final onMoveUpdate(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchMove(F)V

    :cond_0
    return-void
.end method

.method public final prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mIsClearAllInProgress:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final resetExposedMenuView(ZZ)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->shouldResetMenu(Z)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    return-void
.end method

.method public setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTranslatingParentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    return-void
.end method

.method public final setTranslation(FLandroid/view/View;)V
    .locals 0

    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTranslation(F)V

    :cond_0
    return-void
.end method

.method public shouldResetMenu(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final snapChild(Landroid/view/View;FF)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superSnapChild(Landroid/view/View;FF)V

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    check-cast p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->onDragCancelled(Landroid/view/View;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    :cond_1
    return-void
.end method

.method public snapClosed(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public final snapOpen(Landroid/view/View;IF)V
    .locals 0

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public final snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public superDismissChild(Landroid/view/View;FZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    return-void
.end method

.method public superSnapChild(Landroid/view/View;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public swipedFarEnough()Z
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result p0

    return p0
.end method

.method public swipedFastEnough()Z
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result p0

    return p0
.end method

.method public final updateSwipeProgressAlpha(FLandroid/view/View;)V
    .locals 0

    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    :cond_0
    return-void
.end method
