.class public final Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final context:Landroid/content/Context;

.field public dragDownAmountOnStart:F

.field public final dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public draggedFarEnough:Z

.field public expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public initialTouchX:F

.field public initialTouchY:F

.field public isDraggingDown:Z

.field public isInitialDirectionMeasured:Z

.field public isInitiallyDraggedDownard:Z

.field public isTouchConsumablePosition:Z

.field public isTrackpadReverseScroll:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public lastHeight:F

.field public final logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

.field public maxDragDownAnimator:Landroid/animation/ValueAnimator;

.field public minDragDistance:I

.field public final naturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

.field public notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public overDragDownAnimator:Landroid/animation/ValueAnimator;

.field public final pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public slopMultiplier:F

.field public startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public touchSlop:F

.field public final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/DragDownHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/DragDownHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->naturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iput-object p5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    iput-object p7, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    iput-object p9, p0, Lcom/android/systemui/statusbar/DragDownHelper;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    new-instance p1, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const p3, 0x3ecccccd    # 0.4f

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p0, p7}, Lcom/android/systemui/statusbar/DragDownHelper;->updateResources$1(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final animateToMaxDragDown(FFZ)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelTouchBlockHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isKeyguardPanelDisabled()Z

    move-result v2

    if-ne v2, v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    const-string p1, "animateToMaxDragDown: returned"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "animateToMaxDragDown\n"

    invoke-static {v4, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    int-to-float v2, v2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v6, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v4, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    new-instance v5, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;

    invoke-direct {v5, p0, p2, v2, v4}, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    cmpg-float p2, p1, v3

    if-nez p2, :cond_2

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    iget-object p2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    :goto_2
    int-to-float v9, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v5, v0

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final captureStartingChild$1(FF)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 p1, 0x1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_4
    :goto_1
    return-void
.end method

.method public final onFinishDraggingDown()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    const/4 v3, 0x0

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    if-eqz v5, :cond_4

    new-instance v3, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    iget-object v5, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v5, :cond_1

    move-object v5, v6

    :cond_1
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDraggedDownLockDownShade(Landroid/view/View;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$1;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    iget-object v1, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0, v3, v7}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v0, v2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDraggedDown(Landroid/view/View;I)V

    iget-object v1, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$animationHandler$1;

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$animationHandler$1;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1005"

    const-string v2, "Noti swipe down"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logUnSuccessfulDragDown(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v4, v3, v0, v1, v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    :cond_5
    :goto_1
    iget-object v0, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->onExpansionFinished()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v6

    :goto_3
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v6, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    const-wide/16 v1, 0x1

    iget-object v3, v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    if-eqz v3, :cond_a

    iget-object v0, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v1, v2, v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    iget-object v0, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v1, v2, v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_a
    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_5

    :cond_b
    move-object v0, v6

    :goto_5
    sget-object v4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v0, v4, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_c

    if-eqz v3, :cond_c

    iget-object p0, v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v1, v2, p0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->overDragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eqz v4, :cond_13

    if-eq v4, v2, :cond_12

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    sub-float v7, v3, v7

    mul-float/2addr v7, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    iget v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    mul-float/2addr v4, v8

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitialDirectionMeasured:Z

    if-nez v8, :cond_8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v4

    if-gtz v8, :cond_6

    iget v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_8

    :cond_6
    cmpl-float v8, v7, v4

    if-lez v8, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_7

    move v8, v2

    goto :goto_4

    :cond_7
    move v8, v1

    :goto_4
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitiallyDraggedDownard:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitialDirectionMeasured:Z

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/DragDownHelper;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v8, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_9
    iget-boolean p1, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitiallyDraggedDownard:Z

    if-eqz p1, :cond_d

    cmpl-float p1, v7, v4

    if-lez p1, :cond_d

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v7, p1

    if-lez p1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild$1(FF)V

    iput v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onDragDownStarted$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    iget p1, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez p1, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTouchConsumablePosition:Z

    if-nez p1, :cond_b

    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v5, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_c
    return v1

    :cond_d
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v3, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_e

    goto/16 :goto_c

    :cond_e
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v3, v8

    const/4 v6, 0x0

    cmpg-float v6, v7, v6

    if-gez v6, :cond_23

    cmpl-float v4, v3, v4

    if-lez v4, :cond_23

    float-to-double v3, v3

    sub-float/2addr v0, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p1, v3, v6

    if-lez p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move-object p1, v5

    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    move-object p1, v5

    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isLeftOrRightOutOfNSSL(F)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_11

    move-object v5, p1

    :cond_11
    iget-object p1, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logBlockSwipeUpLockscreenPanel()V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTouchConsumablePosition:Z

    xor-int/2addr p0, v2

    return p0

    :cond_12
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTouchConsumablePosition:Z

    goto/16 :goto_c

    :cond_13
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    iput-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v4, v0, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isTouchConsumablePosition(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTouchConsumablePosition:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->naturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isInitialized:Z

    if-nez v3, :cond_14

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isInitialized:Z

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->update()V

    :cond_14
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;->isNaturalScrollingEnabled:Z

    if-nez v0, :cond_15

    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_7

    :cond_15
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitialDirectionMeasured:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitiallyDraggedDownard:Z

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz p0, :cond_16

    goto :goto_8

    :cond_16
    move-object p0, v5

    :goto_8
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput-object p0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto/16 :goto_c

    :cond_17
    iget-object p0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto/16 :goto_a

    :cond_18
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    const-string v4, "SecPanelSplitHelper"

    if-eqz v3, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v6, :cond_19

    iget-object v5, v6, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v5, v5, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "shouldQSDownInLockScreen state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_1b
    if-eqz v3, :cond_1c

    const-string/jumbo p0, "shouldQSDownInLockScreen y, SHADE_STATE return UNDECIDED"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_a

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v5, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    int-to-float v6, v5

    cmpl-float p1, p1, v6

    if-ltz p1, :cond_1f

    if-eqz v3, :cond_1e

    const-string/jumbo p0, "shouldQSDownInLockScreen x, displayWidthOfDivider = "

    const-string p1, ", return RIGHT"

    invoke-static {v5, p0, p1, v4}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_a

    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_9

    :cond_20
    sget-object p0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :goto_9
    if-eqz v3, :cond_21

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldQSDownInLockScreen else, return "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_a
    iput-object p0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p0

    if-eqz p0, :cond_22

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-nez p0, :cond_22

    goto :goto_b

    :cond_22
    move v2, v1

    :goto_b
    iget-object p0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq p0, p1, :cond_23

    xor-int/lit8 p0, v2, 0x1

    iput p0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    iput v2, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    :cond_23
    :goto_c
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->overDragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eq p1, v2, :cond_11

    if-eq p1, v4, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return v1

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitialDirectionMeasured:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitiallyDraggedDownard:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v1

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    int-to-float p1, p1

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild$1(FF)V

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    add-float/2addr p1, v0

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    cmpg-float v4, v0, v5

    if-gez v4, :cond_7

    goto :goto_3

    :cond_7
    move v5, v0

    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_8
    const v4, 0x3e19999a    # 0.15f

    :goto_4
    mul-float/2addr v5, v4

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v4

    sub-float/2addr v5, v0

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    :cond_a
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    if-lez p1, :cond_d

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-nez p1, :cond_10

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result p0

    if-eqz p0, :cond_10

    iget-object p0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    move-object v3, p0

    :goto_5
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_c

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_7

    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-eqz p1, :cond_10

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result p0

    if-eqz p0, :cond_10

    iget-object p0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p0, :cond_e

    goto :goto_6

    :cond_e
    move-object v3, p0

    :goto_6
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_f

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_10
    :goto_7
    return v2

    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitialDirectionMeasured:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isInitiallyDraggedDownard:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v0, v2, :cond_12

    invoke-interface {p1, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-nez p1, :cond_12

    goto/16 :goto_c

    :cond_12
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    iget-object v4, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-nez p1, :cond_17

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object v3, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :cond_13
    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v3, p1, :cond_15

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_14

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromLockscreen()V

    goto :goto_8

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromStatusbarOnLockscreen()V

    :cond_15
    :goto_8
    iget p1, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->springBack$2()V

    goto :goto_9

    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->onFinishDraggingDown()V

    :goto_9
    return v2

    :cond_17
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object v3, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :cond_18
    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v3, p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1a

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_19

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromLockscreen()V

    goto :goto_a

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromStatusbarOnLockscreen()V

    :cond_1a
    :goto_a
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isOverDraggingAllowed()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_b

    :cond_1b
    move v0, v5

    :goto_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1c

    move v1, v2

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/DragDownHelper;->animateToMaxDragDown(FFZ)V

    return v2

    :cond_1d
    :goto_c
    iget p1, v6, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->springBack$2()V

    goto :goto_d

    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    :goto_d
    return v1
.end method

.method public final springBack$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->overDragDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final stopDragging()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x177

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isTrackpadReverseScroll:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAborted()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->onExpansionReset()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final updateResources$1(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    const/4 v0, 0x3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    return-void
.end method
