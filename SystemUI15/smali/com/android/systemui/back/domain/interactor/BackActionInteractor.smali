.class public final Lcom/android/systemui/back/domain/interactor/BackActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final callback:Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;

.field public isCallbackRegistered:Z

.field public final notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public qsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final windowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p4, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p5, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p6, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->windowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iput-object p7, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;-><init>(Lcom/android/systemui/back/domain/interactor/BackActionInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->callback:Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;

    return-void
.end method


# virtual methods
.method public final onBackRequested()Z
    .locals 6

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v1, :cond_0

    const-string v1, "PluginFaceWidgetManager"

    const-string v2, "onBackRequested: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onBackRequested()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->canHandleBackPressed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->qsController:Lcom/android/systemui/shade/QuickSettingsController;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->qsController:Lcom/android/systemui/shade/QuickSettingsController;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-interface {v1}, Lcom/android/systemui/shade/QuickSettingsController;->closeQsCustomizer()V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->qsController:Lcom/android/systemui/shade/QuickSettingsController;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-interface {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getSecQuickSettingsControllerImpl$1()Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->closeQSTooltip()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getQsPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget-boolean v4, v4, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getQsPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    move-result-object p0

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->backKeyEvent()V

    :cond_7
    return v2

    :cond_8
    iget-object v4, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result v4

    goto :goto_3

    :cond_9
    move v4, v3

    :goto_3
    if-eqz v4, :cond_b

    iget-object p0, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    :cond_a
    return v2

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->qsController:Lcom/android/systemui/shade/QuickSettingsController;

    if-nez v0, :cond_c

    move-object v0, v1

    :cond_c
    invoke-interface {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    move-object v1, p0

    :goto_4
    invoke-interface {v1, v3}, Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;->animateCollapseQs(Z)V

    return v2

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_f
    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;->closeUserSwitcherIfOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_11

    const/4 v5, 0x2

    if-eq v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowingOverDream()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_15

    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

    if-nez v0, :cond_12

    move-object v0, v1

    :cond_12
    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;->canBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeBackActionInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    move-object v1, v0

    :goto_6
    invoke-interface {v1}, Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;->onBackPressed()V

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, v3}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    :cond_14
    return v2

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_16

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    return v2

    :cond_16
    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    if-ne v0, v2, :cond_17

    move v0, v2

    goto :goto_7

    :cond_17
    move v0, v3

    :goto_7
    if-eqz v0, :cond_18

    const-string v0, "action"

    const-string v1, "action_back_key"

    invoke-static {v0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return v2

    :cond_18
    return v3
.end method

.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$start$1;-><init>(Lcom/android/systemui/back/domain/interactor/BackActionInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
