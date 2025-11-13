.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;

    invoke-direct {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    const-string v1, "QS"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    const-string v3, "DataUsageLabelManager"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "attachDataUsageLabelView(COMMON for DATAUSAGE)"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "attachDataUsageLabelView() - but panel parent view is null"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->onAttachedToWindow()V

    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-eq v0, p1, :cond_5

    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "panel mBarState "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ StatusBarStateController.getState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const-string v1, "NotificationPanelView"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->hideNotificationShadeInMirrorInteractor:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->setup()V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p0, :cond_8

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_8
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    iget-object v0, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    const-string v2, "QS"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->onDetachedFromWindow()V

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v0, "DataUsageLabelManager"

    invoke-virtual {p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->hideNotificationShadeInMirrorInteractor:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->tearDown()V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p0, :cond_5

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycleObserver:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$displayLifecycleObserver$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$keyguardUpdateMonitorCallback$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_5
    return-void
.end method
