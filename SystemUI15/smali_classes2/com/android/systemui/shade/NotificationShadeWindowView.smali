.class public Lcom/android/systemui/shade/NotificationShadeWindowView;
.super Lcom/android/systemui/scene/ui/view/WindowRootView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

.field public mFloatingActionMode:Landroid/view/ActionMode;

.field public mFloatingActionModeOriginatingView:Landroid/view/View;

.field public mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field public mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

.field public mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

.field public final mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

.field public mVisibilityChangedListener:Ljava/util/function/IntConsumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/scene/ui/view/WindowRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    return-void
.end method


# virtual methods
.method public final cleanupFloatingActionModeViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v2, v1}, Lcom/android/systemui/classifier/FalsingCollector;->onKeyEvent(Landroid/view/KeyEvent;)V

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v4, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0x0

    iget-object v13, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    const/4 v14, 0x2

    if-ge v9, v14, :cond_4

    aget v14, v4, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    if-ne v14, v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_2

    move/from16 v16, v9

    iget-wide v8, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    cmp-long v11, v8, v11

    if-eqz v11, :cond_1

    sub-long v8, v6, v8

    const-wide/16 v11, 0x1e

    cmp-long v8, v8, v11

    if-gtz v8, :cond_3

    :cond_1
    const/4 v8, 0x0

    aget v9, v4, v8

    sub-int/2addr v14, v9

    if-ltz v14, :cond_3

    iput-wide v6, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    aget v8, v13, v14

    add-int/2addr v8, v5

    aput v8, v13, v14

    move v10, v5

    goto :goto_1

    :cond_2
    move/from16 v16, v9

    :cond_3
    :goto_1
    add-int/lit8 v9, v16, 0x1

    goto :goto_0

    :cond_4
    if-nez v10, :cond_5

    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    iput-wide v11, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    goto :goto_4

    :cond_5
    array-length v4, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_7

    aget v9, v13, v8

    if-lez v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v9

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    if-ne v6, v14, :cond_a

    if-ne v7, v14, :cond_9

    iget-object v4, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    iget-object v6, v4, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;

    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    const-string v4, "KeyguardDisplayManager"

    const-string v6, "keys were pressed to disable KeyguardPresentation"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    iput-wide v11, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    :cond_a
    :goto_4
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v5

    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v5

    :cond_c
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    iget-object p0, p0, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->keyguardKeyEventInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-static {v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onUserTouch$default(Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastPrimaryBouncerShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dispatchBackKeyEventPreIme()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->onBackRequested()Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "Ignoring touch while statusBarView not yet set"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_2
    iget-boolean v9, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    :cond_5
    if-nez v7, :cond_6

    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->shouldIgnoreTouch()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "touch ignored by CS"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_6
    const/4 v10, 0x0

    if-eqz v3, :cond_7

    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    iput-object v1, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    sget-object v11, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eq v11, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-ne v11, v8, :cond_9

    :cond_8
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    iput-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    :cond_9
    :goto_3
    iget-boolean v11, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    iget-object v12, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-nez v11, :cond_a

    iget-boolean v11, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    if-eqz v11, :cond_e

    :cond_a
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-ne v11, v8, :cond_b

    move-object v3, v10

    goto/16 :goto_7

    :cond_b
    iget-boolean v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    if-eqz v8, :cond_c

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "touch cancelled"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_c
    iget-boolean v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    if-eqz v8, :cond_e

    if-eqz v3, :cond_d

    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLaunchAnimationTimeout:J

    cmp-long v10, v13, v10

    if-lez v10, :cond_d

    const-string v10, "NotifShadeWindowVC"

    const-string v11, "NSWVC: launch animation timed out"

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    goto :goto_4

    :cond_d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "expand animation running"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_e
    :goto_4
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v10, v10, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-eqz v10, :cond_f

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_f
    iget-boolean v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    if-eqz v10, :cond_10

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "occlusion transition running"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_10
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v10, v1}, Lcom/android/systemui/classifier/FalsingCollector;->onTouchEvent(Landroid/view/MotionEvent;)V

    sget v10, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    invoke-virtual {v10, v1}, Lcom/android/systemui/shade/GlanceableHubContainerController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_11

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "dispatched to glanceable hub container"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_11
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "dispatched to Keyguard"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_12
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_13

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "disallowed new pointer"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :cond_13
    if-eqz v3, :cond_16

    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v13, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v13

    iget-object v14, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    if-eqz v11, :cond_14

    iget-object v15, v11, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v15

    if-nez v15, :cond_14

    goto :goto_5

    :cond_14
    if-eqz v13, :cond_15

    invoke-interface {v13}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v14, :cond_15

    move-object v11, v14

    goto :goto_5

    :cond_15
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_16

    invoke-static {v11, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_16

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v11, v5, v5, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v10, v4, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_16
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v10, :cond_17

    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v11, v10, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    sget-boolean v10, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v10, :cond_18

    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v10

    if-eqz v10, :cond_18

    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    move v9, v5

    goto :goto_6

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_19

    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    move v9, v4

    :cond_19
    :goto_6
    if-eqz v9, :cond_1a

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sendTouchToView(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "expand below notch. sending touch to status bar"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7

    :cond_1a
    iget-boolean v9, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    if-nez v9, :cond_1d

    if-eqz v3, :cond_1d

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v3}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {v7, v3, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->touchIsWithinView(FF)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget v3, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    if-nez v3, :cond_1b

    move v5, v4

    :cond_1b
    if-eqz v5, :cond_1c

    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sendTouchToView(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "sending touch to status bar"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7

    :cond_1c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "hidden or hiding"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7

    :cond_1d
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    if-eqz v3, :cond_20

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sendTouchToView(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v6, :cond_1e

    if-eqz v7, :cond_1f

    :cond_1e
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    :cond_1f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "sending bar gesture to status bar"

    invoke-static {v2, v1, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7

    :cond_20
    const-string v3, "no custom touch dispatch of down event"

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->-$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_8

    :cond_21
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_8
    sget-object v3, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "NotificationShadeWindowView"

    invoke-static {v1, v3, v2}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onMotionEventComplete()V

    return v2
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/scene/ui/view/WindowRootView;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0, p1}, Lcom/android/systemui/shade/ShadeViewController;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldInterceptTouchEvent()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    if-nez v2, :cond_1

    move-object v2, v4

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v2, v1, :cond_1

    invoke-interface {v3, p1}, Lcom/android/systemui/shade/ShadeViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v2, v1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/systemui/shade/ShadeViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    :cond_2
    sget-object v2, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v5}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyExpanded()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v5, v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v5, v1, :cond_8

    :cond_5
    if-nez v2, :cond_8

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelTouchBlockHelper:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isKeyguardPanelDisabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "NSWVC: return false by isKeyguardPanelDisabled"

    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NSWVC: drag down helper intercepted"

    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    :cond_9
    :goto_2
    if-nez v3, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_a
    if-eqz v3, :cond_b

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v0, "KeyguardTouchAnimator"

    const-string v1, "ACTION_CANCEL is called on didIntercept"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalInterceptTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_b
    return v3
.end method

.method public final onMeasure(II)V
    .locals 1

    const-string v0, "NotificationShadeWindowView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0, p1}, Lcom/android/systemui/shade/ShadeViewController;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    xor-int/2addr v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch()V

    sget-object v4, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    if-eqz v4, :cond_5

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    if-nez v2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    :cond_8
    return v2
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setFocusForBiometrics(IZ)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_visibility:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final requestLayout()V
    .locals 3

    const-wide/16 v0, 0x1000

    const-string v2, "NotificationShadeWindowView#requestLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    new-instance p3, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/view/ActionMode$Callback;)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    new-instance p2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    invoke-direct {p2, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    new-instance p2, Lcom/android/internal/view/FloatingActionMode;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p2, v0, p3, p1, v1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object p3, p3, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {p3, p2, p1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {p2}, Landroid/view/ActionMode;->invalidate()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
