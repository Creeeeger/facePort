.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public panelSliderIntercepted:Z

.field public shelfOnDown:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v0, "NSSLC"

    invoke-direct {p1, v0}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->shelfOnDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->panelSliderIntercepted:Z

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->-$$Nest$mupdateEventAvailability(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/MotionEvent;)V

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInContentBounds$2(F)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "NotiRune.NOTI_POLICY_TOUCH_REGION"

    invoke-virtual {v0, p1, p0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1
    return v3

    :cond_2
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    const-string p0, "NotiRune.NOTI_STYLE_PANEL_SPLIT"

    invoke-virtual {v0, p1, p0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_3
    return v3

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    xor-int/2addr v4, v5

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    :cond_5
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :cond_6
    move v6, v3

    :goto_0
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v7, v7, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_7

    if-nez v4, :cond_7

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    :cond_7
    move v7, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_8

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->shelfOnDown:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->panelSliderIntercepted:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v10, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v8, :cond_8

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->shelfOnDown:Z

    :cond_8
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->shelfOnDown:Z

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->onIntercept(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_a

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->panelSliderIntercepted:Z

    goto :goto_2

    :cond_9
    move v8, v3

    :cond_a
    :goto_2
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v9, :cond_b

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v9, v9, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez v9, :cond_b

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v10, :cond_b

    if-nez v8, :cond_b

    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_3

    :cond_b
    move v9, v3

    :goto_3
    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v10, :cond_c

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v11, :cond_c

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v11, :cond_c

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v11, :cond_c

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v11, :cond_c

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v10, :cond_c

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v10, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_4

    :cond_c
    move v10, v3

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-ne v11, v5, :cond_d

    move v11, v5

    goto :goto_5

    :cond_d
    move v11, v3

    :goto_5
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v11, :cond_e

    if-nez v10, :cond_e

    if-nez v7, :cond_e

    if-nez v9, :cond_e

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    invoke-virtual {v2, v5, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_f

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_f
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    if-eqz v2, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_10
    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_13

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "swipeWantsIt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scrollWantsIt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expandWantsIt: "

    const-string v2, ", longPressWantsIt: "

    invoke-static {p0, v9, v1, v7, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v10, :cond_12

    if-nez v9, :cond_12

    if-nez v7, :cond_12

    if-eqz v6, :cond_11

    goto :goto_6

    :cond_11
    move v1, v3

    goto :goto_7

    :cond_12
    :goto_6
    move v1, v5

    :goto_7
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_13
    if-nez v10, :cond_14

    if-nez v9, :cond_14

    if-nez v7, :cond_14

    if-nez v6, :cond_14

    if-eqz v8, :cond_15

    :cond_14
    move v3, v5

    :cond_15
    return v3
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInContentBounds$2(F)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "NotiRune.NOTI_POLICY_TOUCH_REGION"

    invoke-virtual {v0, p1, p0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1
    return v3

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v6, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v6

    :goto_1
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    if-eqz v2, :cond_5

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v3

    :goto_2
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    iget-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v11, :cond_8

    iget-boolean v11, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v11, v11, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez v11, :cond_8

    if-nez v9, :cond_8

    if-nez v2, :cond_8

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    if-eqz v4, :cond_6

    iput-boolean v3, v8, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    :cond_6
    invoke-virtual {v8, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    iget-boolean v13, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v13, :cond_7

    if-nez v12, :cond_7

    if-eqz v10, :cond_7

    iget-boolean v10, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v10, :cond_7

    sget v10, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    move v10, v12

    goto :goto_3

    :cond_8
    move v8, v3

    :goto_3
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v12, :cond_9

    if-nez v10, :cond_9

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v12, :cond_9

    if-nez v9, :cond_9

    iget-boolean v9, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v9, :cond_9

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v9, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_4

    :cond_9
    move v9, v3

    :goto_4
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->panelSliderIntercepted:Z

    if-eqz v11, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eq v11, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-ne v11, v6, :cond_b

    :cond_a
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->panelSliderIntercepted:Z

    :cond_b
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v11, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_5

    :cond_c
    move v11, v3

    :goto_5
    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-nez v12, :cond_d

    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v13, :cond_d

    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v13, v13, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez v13, :cond_d

    if-nez v10, :cond_d

    iget-boolean v10, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v10, :cond_d

    invoke-virtual {v12, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_6

    :cond_d
    move v10, v3

    :goto_6
    if-eqz v2, :cond_10

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    instance-of v12, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v12, :cond_10

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    if-eqz v2, :cond_e

    if-nez v4, :cond_f

    :cond_e
    if-nez v9, :cond_10

    if-eqz v10, :cond_10

    :cond_f
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v6, :cond_12

    if-nez v9, :cond_11

    const/16 v2, 0xb

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    :cond_11
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_12
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->-$$Nest$mupdateEventAvailability(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v4, :cond_13

    const-string v1, "StackScrollerController"

    const-string/jumbo v2, "traceJankOnTouchEvent, mJankMonitor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v12, 0x2

    if-eqz v2, :cond_16

    if-eq v2, v6, :cond_15

    if-eq v2, v5, :cond_14

    goto :goto_7

    :cond_14
    if-eqz v10, :cond_17

    invoke-virtual {v4, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_7

    :cond_15
    if-eqz v10, :cond_17

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFlingAfterUpEvent:Z

    if-nez v1, :cond_17

    invoke-virtual {v4, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_7

    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual {v4, v1, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_17
    :goto_7
    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "horizontalSwipeWantsIt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scrollerWantsIt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expandWantsIt: "

    const-string v2, ", longPressWantsIt: "

    invoke-static {p0, v10, v1, v8, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v9, :cond_19

    if-nez v10, :cond_19

    if-nez v8, :cond_19

    if-eqz v7, :cond_18

    goto :goto_8

    :cond_18
    move v1, v3

    goto :goto_9

    :cond_19
    :goto_8
    move v1, v6

    :goto_9
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1a
    if-nez v9, :cond_1b

    if-nez v10, :cond_1b

    if-nez v8, :cond_1b

    if-nez v7, :cond_1b

    if-eqz v11, :cond_1c

    :cond_1b
    move v3, v6

    :cond_1c
    return v3
.end method
