.class public final Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setInSplitShade(Z)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p0, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeader:Landroid/view/ViewGroup;

    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansion()V

    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz p0, :cond_e

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    iput-object v0, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    new-instance v2, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;-><init>(Lcom/android/systemui/qs/bar/TileChunkLayoutBar;)V

    iput-object v2, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    iget-object v0, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->scrollIndicatorAccessibilityDelegate:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v2, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForAccessibility$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForAccessibility$1$1;-><init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForClickListener$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForClickListener$1$1;-><init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    const v0, 0x7f0a0434

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const v2, 0x7f0a0995

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    :cond_8
    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->logProvider:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;

    const-string v3, "SecQuickSettingsControllerImpl"

    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->navigationModeController$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;

    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->naviBarGestureMode:I

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    if-eqz p1, :cond_9

    iget-object v2, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;

    iget-object v3, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object v2, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->stateListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->observer:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;

    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->splitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v2, :cond_a

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->panelTransitionStateListener:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;

    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QS;

    iput-object v2, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->qs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_c
    iput-object v1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsScrollView:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updatePanelVisibility()V

    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollViewLocationDelta()V

    :cond_e
    return-void
.end method

.method public final onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v2, "SecQuickSettingsControllerImpl"

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->navigationModeController$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    iget-object v1, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;

    iget-object v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    iget-object v2, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->stateListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->observer:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->splitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->panelTransitionStateListener:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    :cond_2
    return-void
.end method
