.class public final Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mLastTouchDownTime:J

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    return-void
.end method


# virtual methods
.method public final handleTouch$1(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v1, v1, Lcom/android/systemui/log/QuickPanelLoggerHelper;->handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x2002

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, v1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->isTrackingSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz p0, :cond_3

    const-string p0, "On expanding, single mouse click expands the panel instead of dragging"

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p0, "!isFullyCollapsed and from mouse"

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-eqz v1, :cond_7

    const-string v1, "handleTouch: touch ignored due to instant expanding"

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_6

    const-string v0, "mInstantExpanding"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_6
    return v3

    :cond_7
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "handleTouch: non-cancel action, touch disabled"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_8

    const-string v0, "mTouchDisabled && event.getActionMasked() != ACTION_CANCEL"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const-string v2, "handleTouch: non-down action, motion was aborted"

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_a

    const-string v0, "mMotionAborted && event.getActionMasked() != ACTION_DOWN"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    if-nez v4, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "handleTouch: drag not enabled"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_d

    const-string v0, "!mNotificationsDragEnabled"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_d
    return v3

    :cond_e
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v3

    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v6, :cond_14

    :cond_10
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v7, :cond_12

    const-string v7, "NotificationPanelView"

    const-string/jumbo v8, "shouldGestureWaitForTouchSlop set mExpectingSynthesizedDown to false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    :cond_11
    move v7, v3

    goto :goto_2

    :cond_12
    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v7

    if-nez v7, :cond_13

    iget v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v7, :cond_11

    :cond_13
    move v7, v2

    :goto_2
    iput-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    :cond_14
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadScroll(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_3

    :cond_15
    move v5, v3

    goto :goto_4

    :cond_16
    :goto_3
    move v5, v2

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x0

    const-string/jumbo v9, "systemui.shade"

    const/4 v10, 0x0

    if-eqz v7, :cond_31

    if-eq v7, v2, :cond_2c

    if-eq v7, v6, :cond_1c

    if-eq v7, v1, :cond_2c

    const/4 v1, 0x5

    if-eq v7, v1, :cond_1a

    const/4 v0, 0x6

    if-eq v7, v0, :cond_17

    goto/16 :goto_f

    :cond_17
    if-eqz v5, :cond_18

    goto/16 :goto_f

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v1, v0, :cond_39

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, v0, :cond_19

    move v0, v3

    goto :goto_5

    :cond_19
    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    goto/16 :goto_f

    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const-string v7, "handleTouch: pointer down action"

    invoke-virtual {v6, p1, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    if-nez v5, :cond_39

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v5, v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v5, v2, :cond_39

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    invoke-static {v1, p1, v4, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_1b

    const-string v0, "!isTrackpadTwoOrThreeFingerSwipe && mStatusBarStateController.getState() == KEYGUARD)"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1b
    return v3

    :cond_1c
    sget-boolean v1, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v3, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    float-to-double v8, v5

    iput-wide v8, v7, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v1, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_20

    move v5, v6

    goto :goto_6

    :cond_20
    move v5, v2

    :goto_6
    int-to-float v5, v5

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v1, v0, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v7, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop$1(Landroid/view/MotionEvent;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_23

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_21

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    if-eqz v5, :cond_23

    :cond_21
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v7, :cond_23

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v7, :cond_23

    iget v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_22

    iget v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v5, v4, v0, v3, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    move v1, v10

    :cond_22
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    :cond_23
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    add-float/2addr v5, v1

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    neg-float v7, v1

    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_27

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float/2addr v4, v8

    iget-boolean v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    if-eqz v8, :cond_24

    goto :goto_7

    :cond_24
    move v6, v2

    :goto_7
    int-to-float v6, v6

    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float/2addr v0, v8

    mul-float/2addr v0, v6

    cmpl-float v6, v0, v10

    if-ltz v6, :cond_26

    :cond_25
    move v0, v3

    goto :goto_8

    :cond_26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_25

    move v0, v2

    :goto_8
    iput-boolean v0, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    :cond_27
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v4, :cond_28

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-nez v4, :cond_39

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    if-eqz v4, :cond_29

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_f

    :cond_29
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_2a

    move v1, v2

    goto :goto_9

    :cond_2a
    move v1, v3

    :goto_9
    if-nez v1, :cond_2b

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    if-eqz v6, :cond_2b

    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_2b
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    invoke-virtual {v0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    goto/16 :goto_f

    :cond_2c
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "onTouch: up/cancel action"

    invoke-virtual {v1, p1, v5}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1, v4, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_2d

    goto :goto_a

    :cond_2d
    invoke-virtual {v0, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_a

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_2f

    goto :goto_a

    :cond_2f
    invoke-virtual {v0, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :cond_30
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    goto/16 :goto_f

    :cond_31
    sget-boolean v1, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_32
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "onTouch: down action"

    invoke-virtual {v1, p1, v5}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v1, v4, v0, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v9, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    const-string v7, "handle down touch"

    iput-object v7, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v4, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    float-to-double v7, v0

    iput-wide v7, v6, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v1, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_b

    :cond_33
    move v1, v3

    :goto_b
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_34

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v1, :cond_34

    move v1, v2

    goto :goto_c

    :cond_34
    move v1, v3

    :goto_c
    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v4, :cond_35

    if-eqz v1, :cond_38

    :cond_35
    if-nez v1, :cond_37

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz v1, :cond_36

    goto :goto_d

    :cond_36
    move v1, v3

    goto :goto_e

    :cond_37
    :goto_d
    move v1, v2

    :goto_e
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    :cond_38
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-nez v1, :cond_39

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v1, :cond_39

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    div-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    div-float/2addr v7, v4

    mul-float/2addr v7, v5

    float-to-int v4, v7

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v7, 0x530

    invoke-direct {v5, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x52e

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x52f

    invoke-virtual {v5, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x531

    invoke-virtual {v4, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_39
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_3a

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v1, "FINAL: !mGestureWaitForTouchSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " || isTracking(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v4, v4, Lcom/android/systemui/log/QuickPanelLoggerHelper;->handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v1, v1, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v4, p1, v1, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_10

    :cond_3b
    move v2, v3

    :cond_3c
    :goto_10
    return v2
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "systemui.shade"

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v0, "onInterceptTouchEvent: mLockStarEnabled="

    sget-object v11, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v12, "NPVC onInterceptTouchEvent"

    invoke-virtual {v11, v2, v12}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v11, :cond_0

    invoke-virtual {v11, v2}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v11, v11, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v11, :cond_1

    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v11

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    if-eqz v11, :cond_6

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NPVC not intercepting touch, panel touches disallowed"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    const-string v4, "mQsController.disallowTouches()"

    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    if-eqz v0, :cond_3

    iput-boolean v10, v0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->actionDownStartInChunkBar:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    return v10

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v4, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_5
    return v9

    :cond_6
    sget-boolean v11, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_7

    const-string/jumbo v1, "unlockedScreenOff animation playing"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_7
    return v9

    :cond_8
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v11, :cond_c

    iget-object v11, v11, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v11, :cond_a

    sget-object v12, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v12, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v12, :cond_a

    iget-object v11, v11, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-object v11, v11, Lcom/android/systemui/shade/PanelSlideEventHandler;->sliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_9

    const-string v1, "isSlideAnimating()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_9
    return v9

    :cond_a
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v12, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    iget-object v12, v12, Lcom/android/systemui/shade/SecNotificationPanelViewController;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v12, v12, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v12, v12, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v12, :cond_c

    iget-object v0, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_b

    const-string v1, "isDragDownAnimating()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_b
    return v9

    :cond_c
    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v11, :cond_f

    iget-object v11, v11, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v11, :cond_d

    iget-object v11, v11, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-boolean v11, v11, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_1

    :cond_d
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_e

    const-string v1, "PanelSplit intercepted. No need to intercept from here"

    invoke-virtual {v0, v2, v1, v10}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_e
    return v10

    :cond_f
    sget-boolean v11, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v12, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v12, :cond_11

    iget-object v11, v11, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v11, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v11, v11, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v11, v9, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    iget-object v13, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v13, v13, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iget-object v14, v13, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    if-nez v14, :cond_11

    new-array v14, v6, [I

    iget-object v15, v13, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    aget v15, v14, v10

    if-lt v11, v15, :cond_11

    iget-object v7, v13, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    add-int/2addr v7, v15

    if-gt v11, v7, :cond_11

    aget v7, v14, v9

    if-lt v12, v7, :cond_11

    iget-object v11, v13, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    if-gt v12, v11, :cond_11

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_10

    const-string v1, "LsRune.LOCKUI_MULTI_USER"

    invoke-virtual {v0, v2, v1, v10}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_10
    return v10

    :cond_11
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v7, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v11, :cond_13

    const-string v0, "NotificationPanelViewController MotionEvent intercepted: bouncer is showing"

    iget-object v3, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v3, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_12

    const-string v1, "mCentralSurfaces.isBouncerShowing()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_12
    return v9

    :cond_13
    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v7, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_16

    :cond_14
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "panel_open"

    invoke-virtual {v0, v3, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "panel_open_peek"

    invoke-virtual {v0, v3, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NotificationPanelViewController MotionEvent intercepted: HeadsUpTouchHelper"

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_15

    const-string v1, "mCommandQueue.panelsEnabled() && !mNotificationStackScrollLayoutController.isLongPressInProgress() && mHeadsUpTouchHelper.onInterceptTouchEvent()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_15
    return v9

    :cond_16
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v11, :cond_17

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v7, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_17

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v7, :cond_17

    const-string v0, "NotiRune.NOTI_AOSP_BUGFIX_NOT_REFER_DELTAY_TOUCH_FOR_DRAG_AND_DROP_HEADS_UP"

    invoke-virtual {v7, v2, v0, v10}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return v10

    :cond_17
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v11, :cond_2a

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v7}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v7

    if-nez v7, :cond_2a

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v11, v11, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v11, :cond_2a

    new-instance v11, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v11, v7, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler$$ExternalSyntheticLambda1;

    invoke-direct {v12, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v13, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v13, v13, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v13, :cond_27

    iget-object v13, v13, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    if-eqz v13, :cond_27

    invoke-virtual {v13, v2}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->updateChunkLayoutBar(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    if-nez v14, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    iget-object v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v4, :cond_19

    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v5, :cond_18

    iget-object v5, v5, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-boolean v5, v5, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-ne v5, v9, :cond_18

    iget-object v4, v4, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    goto :goto_2

    :cond_18
    iget-object v4, v4, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    :goto_2
    new-array v5, v6, [I

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-array v7, v6, [I

    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v7, v10

    aget v16, v5, v10

    sub-int v7, v7, v16

    new-array v10, v6, [I

    invoke-virtual {v4, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v10, v10, v9

    aget v5, v5, v9

    sub-int/2addr v10, v5

    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v8, v7

    add-int/2addr v7, v5

    int-to-float v5, v7

    cmpg-float v5, v14, v5

    if-gtz v5, :cond_19

    cmpg-float v5, v8, v14

    if-gtz v5, :cond_19

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v5, v10

    add-int/2addr v10, v4

    int-to-float v4, v10

    cmpg-float v4, v15, v4

    if-gtz v4, :cond_19

    cmpg-float v4, v5, v15

    if-gtz v4, :cond_19

    move v4, v9

    goto :goto_3

    :cond_19
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->actionDownStartInChunkBar:Z

    :cond_1a
    iget-boolean v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->actionDownStartInChunkBar:Z

    if-eqz v4, :cond_25

    invoke-virtual {v11}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1c
    invoke-virtual {v13, v2}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v7, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    invoke-interface {v7, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_23

    if-eq v7, v9, :cond_1e

    if-eq v7, v6, :cond_1f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1e

    const/4 v4, 0x6

    if-eq v7, v4, :cond_1d

    goto :goto_4

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v5

    if-ne v5, v4, :cond_1b

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    goto :goto_4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_5

    :cond_1f
    iget-object v7, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v7}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    double-to-float v7, v7

    sub-float/2addr v4, v7

    iput v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->draggedHeight:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v12, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1b

    iget v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->draggedHeight:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v7, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v7}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    double-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1b

    invoke-virtual {v13, v2}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    iget-object v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v4, :cond_20

    iget-object v4, v4, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-boolean v4, v4, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-ne v4, v9, :cond_20

    iget v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->draggedHeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    goto/16 :goto_4

    :cond_20
    const/4 v5, 0x0

    iget v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->draggedHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1b

    :cond_21
    iput-boolean v9, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->isExpanding:Z

    move v4, v9

    goto :goto_7

    :goto_5
    iput-boolean v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->isExpanding:Z

    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v5, :cond_22

    iget-object v7, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v7}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setTracking(FZ)Z

    move-result v5

    if-ne v5, v9, :cond_22

    move v4, v9

    goto :goto_6

    :cond_22
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_23
    iget-object v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v4, :cond_24

    iget-object v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v5}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {v4, v5, v9}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setTracking(FZ)Z

    :cond_24
    iget-object v4, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4

    :goto_7
    if-eqz v4, :cond_25

    move v4, v9

    goto :goto_8

    :cond_25
    const/4 v4, 0x0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v9, :cond_28

    :cond_26
    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->actionDownStartInChunkBar:Z

    goto :goto_9

    :cond_27
    const/4 v4, 0x0

    :cond_28
    :goto_9
    if-eqz v4, :cond_2a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_29

    const-string v1, "onInterceptTouchEventForTileChunkLayoutBar()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_29
    return v9

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    goto :goto_a

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    :cond_2c
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    :cond_2d
    :goto_a
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v5, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v5, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float/2addr v5, v8

    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    int-to-float v7, v7

    iget-object v4, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->checkIfScrollEnabled(FF)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollViewLocationDelta()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaX:F

    iget v5, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaY:F

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_2f

    const-string/jumbo v1, "shouldScrollViewIntercept true"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_2f
    return v9

    :cond_30
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v4, v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NotificationPanelViewController MotionEvent intercepted: PulseExpansionHandler"

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_31

    const-string v1, "!mQsController.shouldQuickSettingsIntercept() && mPulseExpansionHandler.onInterceptTouchEvent()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_31
    return v9

    :cond_32
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onIntercept(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NotificationPanelViewController MotionEvent intercepted: QsIntercept"

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_33

    const-string v1, "!isFullyCollapsed() && mQsController.onIntercept()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_33
    return v9

    :cond_34
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-nez v5, :cond_6f

    iget-boolean v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    if-eqz v7, :cond_6f

    iget-boolean v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    if-eqz v7, :cond_35

    goto/16 :goto_23

    :cond_35
    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v4, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_37

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const-string v4, "NPVC MotionEvent not intercepted: non-down action, motion was aborted"

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_36

    const-string v1, "mMotionAborted && event.getActionMasked() != ACTION_DOWN"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_36
    const/4 v3, 0x0

    :goto_b
    return v3

    :cond_37
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v4, :cond_3a

    iget-object v4, v4, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz v4, :cond_38

    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_c

    :cond_38
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_3a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_39

    const-string v1, "LsRune.LOCKUI_NOTI_ICON_TYPE"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_39
    return v9

    :cond_3a
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v4, :cond_3e

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    if-eqz v4, :cond_3e

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v5, v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v5, v9, :cond_3e

    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaOutputDetailShowing:Z

    if-nez v5, :cond_3e

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isTouchOnItemViewArea(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUserActivity()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    :cond_3b
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_3c

    const-string v1, "LsRune.PLUGIN_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_3c
    const/4 v3, 0x0

    :goto_d
    return v3

    :cond_3d
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    if-nez v5, :cond_3e

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    :cond_3e
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaOutputDetailShowing:Z

    const-string v5, "NotificationPanelView"

    if-eqz v4, :cond_3f

    const-string v4, "mMediaOutputDetailShowing is true"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    sget-boolean v4, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v4, :cond_41

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v4, v9, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v4, :cond_41

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_41

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_40

    const-string v3, "CscRune.LOCKUI_BOTTOM_USIM_TEXT"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_e

    :cond_40
    const/4 v4, 0x0

    :goto_e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    return v4

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v8

    if-nez v8, :cond_43

    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v8, v8, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v8, :cond_42

    goto :goto_f

    :cond_42
    const/4 v8, 0x0

    goto :goto_10

    :cond_43
    :goto_f
    move v8, v9

    :goto_10
    iput-boolean v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedOnTouchDown:Z

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v7

    if-nez v7, :cond_44

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v8, v9, :cond_44

    invoke-virtual {v7, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTouchOnEmptyArea(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v8, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v10, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v7, v10, :cond_44

    if-nez v4, :cond_45

    iget-object v7, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v7, v9}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    goto :goto_11

    :cond_44
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    :cond_45
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v8, v8, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v4, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "KeyguardTouchAnimator"

    const-string v8, "intercepted: action=%d mQsExpanded=%b, mQsFullyExpanded=%b"

    invoke-static {v7, v8, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-boolean v7, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    if-eqz v7, :cond_48

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_47

    const-string v1, "LsRune.KEYGUARD_ALL_DIRECTIONS_SWIPE_UNLOCK"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_47
    return v9

    :cond_48
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v7, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v7, :cond_4a

    iget-object v7, v4, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v7, :cond_4a

    invoke-virtual {v7}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v7

    if-ne v7, v9, :cond_4a

    iget-object v4, v4, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;

    move-result-object v7

    if-eqz v7, :cond_4a

    invoke-virtual {v7}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v7

    if-lez v7, :cond_4a

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;

    move-result-object v4

    if-eqz v4, :cond_49

    invoke-virtual {v4, v9}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v4

    goto :goto_12

    :cond_49
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_4a

    move v4, v9

    goto :goto_13

    :cond_4a
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_4c

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_4b

    const-string v1, "canQsScrollUp()"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_14

    :cond_4b
    const/4 v3, 0x0

    :goto_14
    return v3

    :cond_4c
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    const-string v8, "LsRune.LOCKUI_FACE_WIDGET"

    if-eqz v7, :cond_4e

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    invoke-virtual {v0, v2, v8, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_4d
    return v1

    :cond_4e
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v7, v9, :cond_54

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    const/16 v7, 0x8

    if-nez v4, :cond_4f

    goto :goto_15

    :cond_4f
    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    :cond_50
    :goto_15
    if-nez v7, :cond_54

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v0, :cond_52

    :cond_51
    const/4 v10, 0x0

    goto :goto_16

    :cond_52
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v0, :cond_51

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_51

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_16
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_53

    invoke-virtual {v0, v2, v8, v10}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_53
    return v10

    :cond_54
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInLockStarContainer(event) = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pand = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    xor-int/2addr v0, v9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v4, :cond_56

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v4, v9, :cond_56

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v4, :cond_55

    const-string v7, "LsRune.PLUGIN_LOCK_STAR"

    invoke-virtual {v4, v2, v7, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_55
    :goto_17
    return v0

    :goto_18
    sget-object v4, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "onInterceptTouchEvent() error in LockStar - "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_57

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    const/4 v0, 0x0

    :cond_57
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->canCollapsePanelOnTouch()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadScroll(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_59

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_58

    goto :goto_19

    :cond_58
    const/4 v7, 0x0

    goto :goto_1a

    :cond_59
    :goto_19
    move v7, v9

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_67

    if-eq v8, v9, :cond_66

    if-eq v8, v6, :cond_5f

    const/4 v3, 0x3

    if-eq v8, v3, :cond_66

    const/4 v0, 0x5

    if-eq v8, v0, :cond_5e

    const/4 v3, 0x6

    if-eq v8, v3, :cond_5b

    :cond_5a
    :goto_1b
    const/4 v1, 0x0

    goto/16 :goto_22

    :cond_5b
    if-eqz v7, :cond_5c

    goto :goto_1b

    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v3, v0, :cond_5a

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v4, v0, :cond_5d

    const/4 v9, 0x0

    :cond_5d
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    goto :goto_1b

    :cond_5e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const-string v4, "onInterceptTouchEvent: pointer down action"

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    if-nez v7, :cond_5a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v1, v9, :cond_5a

    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1b

    :cond_5f
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v6, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    if-eqz v6, :cond_60

    const/4 v6, -0x1

    goto :goto_1c

    :cond_60
    move v6, v9

    :goto_1c
    int-to-float v6, v6

    iget v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v7, v0, v7

    mul-float/2addr v7, v6

    invoke-static {v3, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v6, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    if-eqz v6, :cond_61

    iget-boolean v6, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v6, :cond_61

    move v6, v9

    goto :goto_1d

    :cond_61
    const/4 v6, 0x0

    :goto_1d
    if-nez v5, :cond_62

    iget-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    if-nez v5, :cond_62

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-nez v3, :cond_62

    if-eqz v6, :cond_5a

    :cond_62
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop$1(Landroid/view/MotionEvent;)F

    move-result v5

    neg-float v8, v5

    cmpg-float v10, v7, v8

    if-ltz v10, :cond_64

    if-nez v6, :cond_63

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-eqz v10, :cond_5a

    :cond_63
    cmpl-float v10, v3, v5

    if-lez v10, :cond_5a

    :cond_64
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_5a

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v10}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v11, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v10, v4, v0, v9, v11}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v10, "NotificationPanelViewController MotionEvent intercepted: startExpandMotion"

    invoke-virtual {v0, v10}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v10, :cond_65

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_65

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v10, "(h: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " < -touchSlop: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " || ((openShadeWithoutHun: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " || mAnimatingOnDown: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") && hAbs: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " > touchSlop: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")) && hAbs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " > abs(x-mInitialExpandX): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_65
    return v9

    :cond_66
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1b

    :cond_67
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_68

    iget-boolean v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v6, :cond_68

    move v6, v9

    goto :goto_1e

    :cond_68
    const/4 v6, 0x0

    :goto_1e
    iput-boolean v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    iget-object v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v6}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-eqz v6, :cond_6a

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_6a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NotificationPanelViewController MotionEvent intercepted: mAnimatingOnDown: true, isClosing(): true"

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_69

    const-string v1, "mAnimationOnDown && isClosing()"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_69
    return v9

    :cond_6a
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mNaturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

    iget-boolean v7, v6, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isInitialized:Z

    if-nez v7, :cond_6b

    iput-boolean v9, v6, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isInitialized:Z

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->update()V

    :cond_6b
    iget-boolean v6, v6, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isNaturalScrollingEnabled:Z

    if-nez v6, :cond_6c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadScroll(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_6c

    move v6, v9

    goto :goto_1f

    :cond_6c
    const/4 v6, 0x0

    :goto_1f
    iput-boolean v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_6d

    goto :goto_20

    :cond_6d
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v6, "not setting mInitialExpandY in onInterceptTouch"

    invoke-virtual {v5, v6}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    goto :goto_21

    :cond_6e
    :goto_20
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    iput v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    :goto_21
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5, v4, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds$1(FF)Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    const-string v7, "intercept down touch"

    iput-object v7, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v5, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    float-to-double v7, v0

    iput-wide v7, v6, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v4, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpVisibleOnDown:Z

    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    :goto_22
    return v1

    :cond_6f
    :goto_23
    iget-boolean v0, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    xor-int/2addr v0, v9

    iget-boolean v6, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;

    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v7, v8, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v5, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v0, v5, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v6, v5, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {v4, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v3, :cond_70

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_70

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v3, "mInstantExpanding: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " || !mNotificationsDragEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    xor-int/2addr v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " || mTouchDisabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_24

    :cond_70
    const/4 v3, 0x0

    :goto_24
    return v3
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "NotificationPanelView"

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    const-string v1, "DeviceEntryUdfpsRefactor.isEnabled() && mAlternateBouncerInteractor.isVisibleState()"

    invoke-virtual {v0, v2, v1, v7}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_0
    return v7

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_4

    sget-object v9, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v9, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v9, :cond_4

    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-object v0, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->sliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_3

    const-string v1, "isSlideAnimating()"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_3
    return v6

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    iget-object v9, v9, Lcom/android/systemui/shade/SecNotificationPanelViewController;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v9, v9, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_6

    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpVisibleOnDown:Z

    if-nez v9, :cond_6

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "shouldScrollViewIntercept & isDragDownAnimating() & !mHeadsUpVisibleOnDown"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_5
    return v6

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    if-eqz v9, :cond_b

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollViewLocationDelta()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaX:F

    iget v8, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaY:F

    invoke-virtual {v3, v4, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_9

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    :cond_9
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_a

    const-string/jumbo v1, "shouldScrollViewIntercept"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_a
    return v6

    :cond_b
    sget-boolean v9, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v9, :cond_d

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_c

    const-string/jumbo v1, "unlockedScreenOff animation playing"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_c
    return v6

    :cond_d
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    goto :goto_0

    :cond_e
    move v0, v7

    :goto_0
    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_f

    const-string v1, "qs touch is disallowed"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_f
    return v6

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    cmp-long v0, v9, v11

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onTouch: duplicate down event detected... ignoring"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_11

    const-string v1, "event.getDownTime() == mLastTouchDownTime"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_11
    return v6

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v9, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpVisibleOnDown:Z

    goto :goto_1

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_15

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v9, v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-eq v9, v6, :cond_14

    if-ne v9, v4, :cond_15

    :cond_14
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-nez v9, :cond_15

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    :cond_15
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v9, :cond_18

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    goto :goto_2

    :cond_16
    move v0, v7

    :goto_2
    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onTouch: ignore touch, panel touches disallowed and qs fully expanded"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_17

    const-string v1, "mQsController.isFullyExpandedAndTouchesDisallowed()"

    invoke-virtual {v0, v2, v1, v7}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_17
    return v7

    :cond_18
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    const/4 v10, 0x6

    if-eqz v9, :cond_25

    iget-object v9, v9, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v9, :cond_25

    iget-object v11, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    if-eqz v11, :cond_25

    new-instance v12, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;

    invoke-direct {v12, v9}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;)V

    invoke-virtual {v11, v2}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->updateChunkLayoutBar(Landroid/view/MotionEvent;)V

    iget-boolean v9, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->isExpanding:Z

    if-eqz v9, :cond_25

    invoke-virtual {v11, v2}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v3}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v13

    double-to-float v3, v13

    sub-float/2addr v8, v3

    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_1f

    if-eq v3, v6, :cond_1d

    if-eq v3, v4, :cond_1b

    if-eq v3, v5, :cond_1d

    if-eq v3, v10, :cond_19

    goto/16 :goto_4

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v3

    if-ne v3, v0, :cond_21

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v3, v0, :cond_1a

    move v0, v7

    goto :goto_3

    :cond_1a
    move v0, v6

    :goto_3
    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_4

    :cond_1b
    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v3, :cond_1c

    iget v4, v3, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->initialBarHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iget-object v3, v3, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget v9, v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    int-to-float v9, v9

    invoke-static {v4, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v4

    iget v9, v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    int-to-float v9, v9

    invoke-static {v4, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->setContainerHeight(I)V

    :cond_1c
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_21

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1d
    iget-object v0, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    const/4 v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    iget-object v0, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v0, :cond_1e

    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v3}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3, v7}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setTracking(FZ)Z

    :cond_1e
    iget-object v0, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_1f
    iget-object v0, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz v0, :cond_20

    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v3}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setTracking(FZ)Z

    :cond_20
    iget-object v0, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_21
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_23

    :cond_22
    iput-boolean v7, v11, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->isExpanding:Z

    :cond_23
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_24

    const-string v1, "onTouchEventForTileChunkLayoutBar()"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_24
    return v6

    :cond_25
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v9, :cond_28

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->interceptTouchForCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isGestureDetected()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    :cond_26
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "MultiWindowEdgeDetector - motion aborted."

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_27

    const-string v1, "CoreRune.MW_FREEFORM_CORNER_GESTURE"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_27
    return v6

    :cond_28
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v9, :cond_2a

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onTouch: ignore touch, bouncer scrimmed or showing over dream"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_29

    const-string v1, "mCentralSurfaces.isBouncerShowingScrimmed()"

    invoke-virtual {v0, v2, v1, v7}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_29
    return v7

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2c

    :cond_2b
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    :cond_2c
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    if-eqz v0, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_2d

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    :cond_2d
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    if-nez v9, :cond_2e

    iget v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0, v9, v11, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-eqz v0, :cond_31

    :cond_2f
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v4, "onTouch: PulseExpansionHandler handled event"

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v4, :cond_30

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v4, "pulseShouldGetTouch && mPulseExpansionHandler.onTouchEvent()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (!mIsExpandingOrCollapsing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    xor-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " && !mQsController.shouldQuickSettingsIntercept(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    invoke-virtual {v5, v7, v4, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") || mPulseExpansionHandler.isExpanding(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_30
    return v6

    :cond_31
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    if-eqz v9, :cond_33

    const-string v3, "onTouch: eat touch, device pulsing"

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_32

    const-string v1, "mPulsing"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_32
    return v6

    :cond_33
    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    if-eqz v9, :cond_35

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v11, :cond_35

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v0, :cond_34

    move v0, v6

    goto :goto_5

    :cond_34
    move v0, v7

    :goto_5
    if-nez v0, :cond_35

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v9, "panel_open_peek"

    invoke-virtual {v0, v9, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_35
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v11, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    const/4 v13, 0x5

    if-eqz v11, :cond_36

    iget-boolean v11, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    if-eqz v11, :cond_4b

    :cond_36
    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v9

    if-nez v9, :cond_4b

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v11, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v11, :cond_4b

    iget-boolean v11, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-nez v11, :cond_4b

    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4b

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    iget-boolean v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    if-eqz v14, :cond_37

    if-eqz v11, :cond_37

    :goto_6
    move v11, v7

    goto/16 :goto_d

    :cond_37
    sget-boolean v14, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v14, :cond_38

    const-class v14, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v15, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v15, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v14}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v14

    if-eqz v14, :cond_38

    goto :goto_6

    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    if-eqz v11, :cond_40

    if-eq v11, v6, :cond_3d

    if-eq v11, v5, :cond_3d

    if-eq v11, v13, :cond_3a

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-nez v9, :cond_39

    move v9, v7

    goto/16 :goto_b

    :cond_39
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_b

    :cond_3a
    iput-boolean v6, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-nez v11, :cond_3b

    goto :goto_6

    :cond_3b
    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-nez v14, :cond_3c

    goto/16 :goto_d

    :cond_3c
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->endMotion()V

    :goto_7
    move v9, v11

    goto/16 :goto_b

    :cond_3d
    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-nez v11, :cond_3e

    goto :goto_6

    :cond_3e
    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-nez v14, :cond_3f

    goto/16 :goto_d

    :cond_3f
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->endMotion()V

    goto :goto_7

    :cond_40
    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_41

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v15, v14}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_41

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :cond_41
    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_42

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v15, v14}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_42

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :cond_42
    const/4 v11, 0x0

    :goto_8
    const-string v14, "onTouchEvent: After selecting target view"

    const-string v15, "KeyguardSecAffordanceHelper"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_4a

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v14, :cond_43

    if-eq v14, v11, :cond_43

    goto/16 :goto_c

    :cond_43
    iput-boolean v7, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/16 v3, 0x8

    if-ne v14, v6, :cond_45

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v14, :cond_44

    const/4 v14, 0x0

    :cond_44
    invoke-virtual {v14, v3}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const-string/jumbo v3, "updateBlurPanelOrientation Fixed Portrait"

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_45
    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v14, :cond_46

    const/4 v14, 0x0

    :cond_46
    invoke-virtual {v14, v3}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_9
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    const-string/jumbo v14, "window"

    invoke-virtual {v3, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    iget-object v15, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v15, :cond_47

    const/4 v15, 0x0

    :cond_47
    invoke-interface {v3, v14, v15}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-ne v11, v3, :cond_48

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    goto :goto_a

    :cond_48
    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-ne v11, v14, :cond_49

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    :cond_49
    :goto_a
    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v3, v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v11, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v11, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_b
    move v11, v9

    goto :goto_d

    :cond_4a
    :goto_c
    iput-boolean v6, v9, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    goto/16 :goto_6

    :goto_d
    or-int/2addr v0, v11

    :cond_4b
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v9, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    if-eqz v9, :cond_4d

    iget-object v0, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_4c

    const-string v1, "mOnlyAffordanceInThisMotion"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_4c
    return v6

    :cond_4d
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v9, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v9, v9, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const-string v11, "IndicatorTouchHandler"

    if-eqz v9, :cond_51

    iget-boolean v9, v9, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    if-eqz v9, :cond_51

    iget v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    if-nez v9, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_4f

    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eq v9, v6, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v9, v5, :cond_51

    :cond_4f
    iget v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    add-int/2addr v9, v6

    iput v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    iget-object v14, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    iget-object v15, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->mainHandler:Landroid/os/Handler;

    if-ne v9, v6, :cond_50

    invoke-virtual {v15, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v15, v14, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v9, "Post double tap timeout runnable"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_50
    if-lt v9, v5, :cond_51

    const-string v9, "Go to sleep by knox double tap"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    invoke-virtual {v15, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_51
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v12, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v9, :cond_59

    if-eq v9, v6, :cond_56

    if-eq v9, v5, :cond_54

    const/4 v12, 0x5

    if-eq v9, v12, :cond_52

    if-eq v9, v10, :cond_54

    goto/16 :goto_11

    :cond_52
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    if-eqz v9, :cond_53

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pointer down x="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".rawX ,y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".rawY"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    goto/16 :goto_11

    :cond_54
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    if-eqz v9, :cond_55

    const-string v9, "cancel or pointer up -> block to jump to call in multi touch"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    goto :goto_11

    :cond_56
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    if-eqz v9, :cond_58

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v11, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v11, :cond_57

    iget-object v11, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    goto :goto_f

    :cond_57
    iget-object v11, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    :goto_f
    float-to-int v9, v9

    float-to-int v10, v10

    invoke-virtual {v11, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_58

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    if-eqz v9, :cond_58

    invoke-virtual {v9}, Landroid/view/View;->performClick()Z

    :cond_58
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    goto :goto_11

    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object v13, v12

    check-cast v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v13, :cond_5a

    iget-object v13, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    goto :goto_10

    :cond_5a
    iget-object v13, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    :goto_10
    float-to-int v9, v9

    float-to-int v10, v10

    invoke-virtual {v13, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5b

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    iget v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownX:F

    iget v3, v3, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownY:F

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v10, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const-string v12, "ACTION_DOWN x="

    const-string v13, ", y="

    const-string v14, ", on the callChip=true, keyguardShowing="

    invoke-static {v12, v9, v13, v3, v14}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v10, v11}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5b
    :goto_11
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_5c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_5d

    :cond_5c
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V

    :cond_5d
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v9, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq v9, v6, :cond_61

    iget-object v9, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v9, :cond_61

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v9

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v11, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_5e

    iget-boolean v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v10, :cond_5e

    move v10, v6

    goto :goto_12

    :cond_5e
    move v10, v7

    :goto_12
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v3, v2, v9, v10}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->handleTouch(Landroid/view/MotionEvent;ZZ)Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_5f

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onTouch: handleQsTouch handled event"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    :cond_5f
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_60

    const-string v1, "!mHeadsUpTouchHelper.isTrackingHeadsUp() && mQsController.handleTouch()"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_60
    return v6

    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_68

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "panel_open"

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v0, :cond_67

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    if-eqz v0, :cond_67

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v9, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3fe00000    # 1.75f

    mul-float/2addr v11, v10

    cmpl-float v11, v11, v9

    if-gtz v11, :cond_66

    iget-object v11, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    if-ne v11, v6, :cond_62

    goto :goto_14

    :cond_62
    sget-object v11, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v11, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v11, :cond_63

    goto :goto_14

    :cond_63
    int-to-float v11, v4

    div-float v12, v9, v11

    iput v12, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelCenter:F

    div-float/2addr v10, v11

    iput v10, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->controllerCenter:F

    iget-object v10, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v10}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v10

    int-to-float v10, v10

    iget v12, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->controllerCenter:F

    add-float/2addr v10, v12

    sub-float v12, v9, v10

    iget v13, v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelCenter:F

    int-to-float v14, v5

    div-float/2addr v9, v14

    mul-float/2addr v11, v9

    cmpg-float v9, v3, v9

    if-gez v9, :cond_64

    sub-float/2addr v10, v13

    goto :goto_13

    :cond_64
    cmpl-float v3, v3, v11

    if-lez v3, :cond_65

    sub-float v10, v12, v13

    goto :goto_13

    :cond_65
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v0, v10}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->setHorizontalPanelTranslation(F)V

    goto :goto_15

    :cond_66
    :goto_14
    invoke-virtual {v0, v7}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    :goto_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_67
    move v3, v6

    goto :goto_16

    :cond_68
    move v3, v0

    :goto_16
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v9, :cond_6a

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v9, v6, :cond_6a

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v9, :cond_69

    const-string v10, "LsRune.PLUGIN_LOCK_STAR"

    invoke-virtual {v9, v2, v10, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_69
    :goto_17
    return v0

    :goto_18
    sget-object v9, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onTouchEvent() error in LockStar - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v9, :cond_6b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateKeyguardPosition(F)V

    :cond_6b
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_70

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v9, v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v9, v6, :cond_70

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onTouch() event.getAction() : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_6c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_6e

    :cond_6c
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    if-nez v3, :cond_6d

    goto :goto_19

    :cond_6d
    move v6, v7

    :goto_19
    if-eqz v6, :cond_6e

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    :cond_6e
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_6f

    const-string v3, "LsRune.PLUGIN_LOCK"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_6f
    return v0

    :cond_70
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedOnTouchDown:Z

    if-nez v8, :cond_73

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_73

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v8, v6, :cond_71

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_71

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onAnimatorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a

    :cond_71
    move v0, v7

    :goto_1a
    if-nez v0, :cond_73

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->cancelIndicationAreaAnim()V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_72

    const-string v1, "LsRune.KEYGUARD_ALL_DIRECTIONS_SWIPE_UNLOCK"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_72
    return v6

    :cond_73
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v8, :cond_7f

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v0, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_74

    move v0, v6

    goto :goto_1b

    :cond_74
    move v0, v7

    :goto_1b
    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    iget-object v9, v8, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v9, :cond_76

    if-eqz v0, :cond_77

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_75

    invoke-virtual {v9, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->handleTouch(Landroid/view/MotionEvent;)Z

    :cond_75
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v4, "onTouchEvent ignored : "

    const-string v5, "QuickPanelLog"

    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_1c
    move v0, v7

    goto :goto_1f

    :cond_77
    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_78

    :goto_1d
    goto :goto_1c

    :cond_78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_79

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_7b

    :cond_79
    if-nez v9, :cond_7a

    goto :goto_1e

    :cond_7a
    iput-boolean v7, v9, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    :cond_7b
    :goto_1e
    iget-object v0, v9, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-boolean v4, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->slidingInitialized:Z

    if-nez v4, :cond_7c

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/PanelSlideEventHandler;->initiateSlide(Landroid/view/MotionEvent;)V

    :cond_7c
    invoke-virtual {v9, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->onIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_1d

    :cond_7d
    invoke-virtual {v9, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->handleTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Lcom/android/systemui/shade/SecNotificationPanelViewController;->onPanelSplitIntercepted()V

    move v0, v6

    :goto_1f
    if-eqz v0, :cond_7f

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_7e

    const-string v1, "PanelSliding "

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_7e
    return v6

    :cond_7f
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v4, v6, :cond_80

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_81

    const-string v4, "No handleTouch() in KEYGUARD state"

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_20

    :cond_80
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->handleTouch$1(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v3, v0

    :cond_81
    :goto_20
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v4, :cond_82

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_82

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v4, "FINAL: !mDozing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    xor-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " || handled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v5, v5, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v4, v4, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2, v4, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v0, :cond_84

    if-eqz v3, :cond_83

    goto :goto_21

    :cond_83
    move v6, v7

    :cond_84
    :goto_21
    return v6
.end method
