.class public Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeViewController;
.implements Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;
.implements Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;
.implements Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;


# instance fields
.field public final legacyPanelExpansion:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final shadeFoldAnimator:Lcom/android/systemui/shade/ShadeFoldAnimatorEmptyImpl;

.field public final shadeHeadsUpTracker:Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;

    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;->shadeHeadsUpTracker:Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;

    new-instance v0, Lcom/android/systemui/shade/ShadeFoldAnimatorEmptyImpl;

    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeFoldAnimatorEmptyImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;->shadeFoldAnimator:Lcom/android/systemui/shade/ShadeFoldAnimatorEmptyImpl;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final animateCollapseQs(Z)V
    .locals 0

    return-void
.end method

.method public final blockExpansionForCurrentTouch()V
    .locals 0

    return-void
.end method

.method public final canBeCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final cancelInputFocusTransfer()V
    .locals 0

    return-void
.end method

.method public closeQsIfPossible()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final closeUserSwitcherIfOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dozeTimeTick()V
    .locals 0

    return-void
.end method

.method public final expandToNotifications()V
    .locals 0

    return-void
.end method

.method public final finishInputFocusTransfer(F)V
    .locals 0

    return-void
.end method

.method public final getBarState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getKeyguardBottomAreaViewController()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;->getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    return-object p0
.end method

.method public final getShadeFoldAnimator()Lcom/android/systemui/shade/ShadeFoldAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;->shadeFoldAnimator:Lcom/android/systemui/shade/ShadeFoldAnimatorEmptyImpl;

    return-object p0
.end method

.method public final getShadeHeadsUpTracker$1()Lcom/android/systemui/shade/ShadeHeadsUpTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;->shadeHeadsUpTracker:Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;

    return-object p0
.end method

.method public final handleExternalInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleExternalTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isCollapsing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFullyExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInLockStarContainer(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLaunchTransitionFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLaunchTransitionRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPanelExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTracking()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isViewEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onDismissCancelled()V
    .locals 0

    return-void
.end method

.method public final registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    return-void
.end method

.method public final resetViewGroupFade()V
    .locals 0

    return-void
.end method

.method public final resetViews(Z)V
    .locals 0

    return-void
.end method

.method public final resetViews(ZZ)V
    .locals 0

    return-void
.end method

.method public final setAlpha(IZ)V
    .locals 0

    return-void
.end method

.method public final setAlphaChangeAnimationEndAction(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;)V
    .locals 0

    return-void
.end method

.method public final setKeyguardStatusBarAlpha(F)V
    .locals 0

    return-void
.end method

.method public final setKeyguardTransitionProgress(F)V
    .locals 0

    return-void
.end method

.method public final setOverStretchAmount(F)V
    .locals 0

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 0

    return-void
.end method

.method public final setQsScrimEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final shouldHideStatusBarIconsWhenExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final showAodUi()V
    .locals 0

    return-void
.end method

.method public final startBouncerPreHideAnimation()V
    .locals 0

    return-void
.end method

.method public final startExpandLatencyTracking()V
    .locals 0

    return-void
.end method

.method public final startInputFocusTransfer()V
    .locals 0

    return-void
.end method

.method public final transitionToExpandedShade(JZ)V
    .locals 0

    return-void
.end method

.method public final unregisterAODDoubleTouchListener()V
    .locals 0

    return-void
.end method

.method public final updateSystemUiStateFlags()V
    .locals 0

    return-void
.end method

.method public final updateTouchableRegion()V
    .locals 0

    return-void
.end method
