.class public final Lcom/android/systemui/shade/ShadeControllerImpl;
.super Lcom/android/systemui/shade/BaseShadeControllerImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDisplayId:I

.field public mExpandedVisible:Z

.field public final mGutsManager:Ldagger/Lazy;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardViewMediator:Ldagger/Lazy;

.field public mLockscreenOrShadeVisible:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

.field public final mNpvc:Ldagger/Lazy;

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public final mSecShadeControllerImpl:Lcom/android/systemui/shade/SecShadeControllerImpl;

.field public mShadeVisibilityListener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;ILdagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "I",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p7, p10, p13}, Lcom/android/systemui/shade/BaseShadeControllerImpl;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;)V

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mKeyguardViewMediator:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iput-object p12, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNpvc:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p9, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p14, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mGutsManager:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p7, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput p11, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDisplayId:I

    iput-object p5, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p13, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mAssistManagerLazy:Ldagger/Lazy;

    new-instance p1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string p2, "SC"

    invoke-direct {p1, p2}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    new-instance p1, Lcom/android/systemui/shade/SecShadeControllerImpl;

    invoke-direct {p1}, Lcom/android/systemui/shade/SecShadeControllerImpl;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mSecShadeControllerImpl:Lcom/android/systemui/shade/SecShadeControllerImpl;

    iput-object p15, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method


# virtual methods
.method public final animateCollapseShade(FIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p3, p3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    move-result p3

    if-eqz p3, :cond_3

    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p2, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->unpinAll(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p2, p3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    iget-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p2, p2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, p3}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p2, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p2, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZZ)V

    :cond_3
    return-void
.end method

.method public final animateCollapseShadeFromCommand(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->isShadeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(FIZZ)V

    return-void
.end method

.method public final cancelExpansionAndCollapseShade()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    :cond_1
    return-void
.end method

.method public final closeShadeIfOpen()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return-void
.end method

.method public final collapseOnMainThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShadeInternal()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final collapseShade()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShadeInternal()Z

    return-void
.end method

.method public final collapseShade(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShadeInternal()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->instantCollapseShade()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final collapseShadeForActivityStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mKeyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->needsCollapsePanelWithNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CentralSurfaces"

    const-string v1, "collapseShade with no animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final collapseShadeInternal()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(FIZZ)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    return v2

    :cond_1
    return v1
.end method

.method public final collapseWithDuration(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNpvc:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    return-void
.end method

.method public final expandToNotifications()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromEtc()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToNotifications()V

    return-void
.end method

.method public final expandToQs()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToQs()V

    return-void
.end method

.method public final getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNpvc:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    return-object p0
.end method

.method public final instantCollapseShade()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->instantCollapse()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    return-void
.end method

.method public final instantExpandShade()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedVisible(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    iget v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public final isExpandedVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    return p0
.end method

.method public final isExpandingOrCollapsing()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    move-result p0

    return p0
.end method

.method public final isShadeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShadeFullyOpen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result p0

    return p0
.end method

.method public final makeExpandedInvisible()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const-string v0, "makeExpandedInvisible"

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZZ)V

    iput-boolean v4, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setPanelVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mGutsManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mShadeVisibilityListener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->expandedVisibleChanged(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldHideStatusBarIconsWhenExpanded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez p0, :cond_2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-boolean v5, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-eqz v5, :cond_6

    iget v5, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    cmpg-float v5, v5, v2

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "KeyguardTouchAnimator"

    const-string v6, "NSSL wasn\'t restored to original scale. Need to reset in force."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset(Z)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "makeExpandedInvisible canceled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!mExpandedVisible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " || getNotificationShadeWindowView == null: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final makeExpandedVisible(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "makeExpandedVisible canceled: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mExpandedVisible: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " || !getCommandQueue().panelsEnabled(): "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "makeExpandedVisible: force: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setPanelVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    xor-int/2addr p1, v2

    iget v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mDisplayId:I

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mShadeVisibilityListener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->expandedVisibleChanged(Z)V

    return-void
.end method

.method public final notifyVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iget-object v0, v0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->windowRootViewVisibilityRepository:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    iget-object v0, v0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->_isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mLockscreenOrShadeVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mLockscreenOrShadeVisible:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const-string p1, "onShadeVisibilityChanged"

    invoke-static {p0, p1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStatusBarTouch(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    const-class p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mIsGoingGutOpenedFromLock:Z

    :cond_1
    return-void
.end method

.method public final performHapticFeedback()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public final postAnimateCollapseShade()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postAnimateForceCollapseShade()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postOnShadeExpanded(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shade/ShadeControllerImpl$1;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final setNotificationShadeWindowViewController(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    return-void
.end method

.method public final setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mShadeVisibilityListener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

    return-void
.end method

.method public final start()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeControllerImpl$2;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mSecShadeControllerImpl:Lcom/android/systemui/shade/SecShadeControllerImpl;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/ShadeControllerImpl;I)V

    iget-object p0, v0, Lcom/android/systemui/shade/SecShadeControllerImpl;->panelTouchProximityInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    iget-object v2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceType;->isTouchProximitySupported(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "SecPanelTouchProximityInteractor"

    if-nez v2, :cond_0

    const-string/jumbo p0, "start(): touch proximity not supported"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->postAnimateForceCollapseShadeRunnable:Ljava/lang/Runnable;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;

    const/4 v7, 0x0

    const/16 v11, 0x30

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string/jumbo p0, "start(): broadcastReceiver registered"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/shade/SecShadeControllerImpl;->secQuickSettingsAffordanceInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PanelAffordanceCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v3, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string/jumbo v4, "start : isPanelAffordanceAvailableCount = "

    const-string v5, "SecQuickSettingsAffordanceInteractor"

    invoke-static {v4, v5, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_2

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateListener:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->transitionCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;

    const/4 v9, 0x0

    const/16 v13, 0x30

    invoke-static/range {v6 .. v13}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->updateMonitorCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-string/jumbo p0, "start : broadcastReceiver registered"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
