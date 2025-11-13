.class public final Lcom/android/systemui/shade/NotificationsQSContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSContainerController;


# instance fields
.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

.field public footerActionsOffset:I

.field public final fragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public isQSCustomizerAnimating:Z

.field public isQSCustomizing:Z

.field public largeScreenShadeHeaderActive:Z

.field public largeScreenShadeHeaderHeight:I

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public panelMarginHorizontal:I

.field public final resourcePickerLazy:Ldagger/Lazy;

.field public scrimShadeBottomMargin:I

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public shadeHeaderHeight:I

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    iput-object p7, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p8, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object p9, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    iput-object p11, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->resourcePickerLazy:Ldagger/Lazy;

    new-instance p1, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    new-instance p1, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    return-void
.end method

.method public static final synthetic access$getMView$p$s1324948915(Lcom/android/systemui/shade/NotificationsQSContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$2;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateResources$1()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$2;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    const-string v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    iget-object v1, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    const-string v2, "QS"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setCustomizerAnimating(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCustomizerShowing(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/plugins/qs/QSContainerController$DefaultImpls;->setCustomizerShowing(Lcom/android/systemui/plugins/qs/QSContainerController;Z)V

    return-void
.end method

.method public final setCustomizerShowing(ZJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizing:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizing:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;Z)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method public final setDetailShowing(Z)V
    .locals 0

    return-void
.end method

.method public final updateConstraints$1()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0714bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0a05ca

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    const/4 v5, 0x7

    invoke-virtual {v0, v3, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    const v1, 0x7f0a0975

    invoke-virtual {v0, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    invoke-virtual {v0, v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    invoke-virtual {v0, v1, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v6, v3, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v0, v1, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->resourcePickerLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v9, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v9, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v0, v1, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v10, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v10, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v0, v1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const v1, 0x7f0a0826

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v8, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    invoke-virtual {v0, v1, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget v4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    invoke-virtual {v0, v1, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-virtual {v0, v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v7, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v5, v5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getNotificationBottomPadding(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v9, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    const v5, 0x7f0a0bef

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0713b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_3
    iget v4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v3, v3, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v4, v2, v7, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderHeight:I

    invoke-virtual {v0, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    :goto_1
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getShadeHeaderWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final updateResources$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b97

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->resourcePickerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getShadeHeaderHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dd4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b98

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b99

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateConstraints$1()V

    new-instance v0, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07145d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-interface {v0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070db4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070db6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-interface {v0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method
