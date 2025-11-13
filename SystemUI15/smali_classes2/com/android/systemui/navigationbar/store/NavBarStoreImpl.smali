.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/NavBarStore;


# instance fields
.field public final bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public handleEventLoggingEnabled:Z

.field public final handler:Landroid/os/Handler;

.field public final hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

.field public final interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

.field public final layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field public final logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

.field public loggingDepth:I

.field public final navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

.field public final navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field public final navDependencies:Ljava/util/HashMap;

.field public final navStateManager:Ljava/util/HashMap;

.field public packs:Ljava/util/List;

.field public final pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

.field public final pluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field public taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/SettingsHelper;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;Lcom/android/systemui/model/SysUiState;Lcom/samsung/systemui/splugins/SPluginManager;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iput-object p6, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    iput-object p7, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    iput-object p8, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iput-object p9, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

    iput-object p10, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iput-object p11, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    iput-object p12, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p13, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handler:Landroid/os/Handler;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    invoke-direct {p2, p1, p0, p11}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Lcom/samsung/systemui/splugins/SPluginManager;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    sget-object p3, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;->getInstance()Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->initDisplayDependenciesIfNeeded(ILandroid/content/Context;)V

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    sput-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    sput-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_GESTURE:Z

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    sput-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const-class p0, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    const/4 p1, 0x0

    iget-object p3, p2, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    invoke-interface {p3, p2, p0, p1}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    iget v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apply("

    const-string v5, ") "

    invoke-static {v1, v4, v5, v3}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarIconAndHints;

    if-eqz v0, :cond_1

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    goto/16 :goto_10

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReevaluateNavBar;

    const-class v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    goto/16 :goto_10

    :cond_2
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarOpaqueColor;

    if-eqz v0, :cond_3

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p2, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    goto/16 :goto_10

    :cond_3
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;

    if-eqz v0, :cond_4

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavBarLayout()V

    goto/16 :goto_10

    :cond_4
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarIconMarquee;

    iget-object v4, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    if-eqz v0, :cond_5

    iget-object p1, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    const-class p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->marqueeNavigationBarIcon(II)V

    goto/16 :goto_10

    :cond_5
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$InvalidateRemoteView;

    if-eqz v0, :cond_6

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRemoteViewContainer()V

    goto/16 :goto_10

    :cond_6
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    const/4 v5, 0x1

    const/4 v6, 0x4

    const-class v7, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    const/4 v8, 0x0

    if-eqz v0, :cond_d

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    iget-object v2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    iget-boolean v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    if-eqz v0, :cond_51

    iget-object v0, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz v0, :cond_7

    move-object v8, v0

    :cond_7
    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v8, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    if-nez v0, :cond_9

    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_8

    goto/16 :goto_10

    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_9
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    if-ne p2, v5, :cond_b

    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_a

    goto/16 :goto_10

    :cond_a
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_b
    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_c

    goto/16 :goto_10

    :cond_c
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_d
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    if-eqz v0, :cond_10

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    iget v0, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    cmpg-float v0, v0, p2

    if-nez v0, :cond_e

    goto/16 :goto_10

    :cond_e
    iput p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    goto :goto_0

    :cond_f
    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    goto :goto_1

    :cond_10
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteView(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;I)V

    goto/16 :goto_10

    :cond_11
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarNormalStyle;

    const v7, 0x7f0a07c6

    const/4 v9, 0x0

    const/16 v10, 0x8

    const-class v11, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    invoke-virtual {p1, v9}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarStyle(Z)V

    goto/16 :goto_10

    :cond_12
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarSUWStyle;

    if-eqz v0, :cond_13

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarStyle(Z)V

    goto/16 :goto_10

    :cond_13
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    iget v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->hints:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    goto :goto_2

    :cond_14
    move v5, v9

    :goto_2
    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez p1, :cond_15

    goto :goto_3

    :cond_15
    move-object v8, p1

    :goto_3
    if-nez p2, :cond_16

    if-nez v5, :cond_16

    move v6, v9

    :cond_16
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_17
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0604c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_18

    move-object v1, v8

    :cond_18
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_19

    move-object v1, v8

    :cond_19
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_1a

    move-object v1, v8

    :cond_1a
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    if-nez v0, :cond_1b

    move-object v0, v8

    :cond_1b
    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->setDarkIntensity(F)V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backAltRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    if-nez v0, :cond_1c

    move-object v0, v8

    :cond_1c
    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->setDarkIntensity(F)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    if-nez p1, :cond_1d

    goto :goto_4

    :cond_1d
    move-object v8, p1

    :goto_4
    invoke-virtual {v8, p2}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->setDarkIntensity(F)V

    goto/16 :goto_10

    :cond_1e
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;

    if-eqz v0, :cond_24

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    iput p2, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->hints:I

    and-int/2addr p2, v5

    if-eqz p2, :cond_1f

    goto :goto_5

    :cond_1f
    move v5, v9

    :goto_5
    iget-object p2, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez p2, :cond_20

    move-object p2, v8

    :cond_20
    if-eqz v5, :cond_21

    move v0, v9

    goto :goto_6

    :cond_21
    move v0, v6

    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez p1, :cond_22

    goto :goto_7

    :cond_22
    move-object v8, p1

    :goto_7
    if-eqz v5, :cond_23

    goto :goto_8

    :cond_23
    move v6, v9

    :goto_8
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_24
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v1, :cond_25

    move-object v1, v8

    :cond_25
    if-eqz v0, :cond_26

    move v6, v9

    :cond_26
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez p1, :cond_27

    goto :goto_9

    :cond_27
    move-object v8, p1

    :goto_9
    iget-boolean p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    goto/16 :goto_10

    :cond_28
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;

    iget-object v6, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    if-eqz v0, :cond_2a

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    if-ne p1, v10, :cond_29

    goto :goto_a

    :cond_29
    move v5, v9

    :goto_a
    const-wide p1, 0x2000000000L

    invoke-virtual {v6, p1, p2, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto/16 :goto_10

    :cond_2a
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    if-eqz v0, :cond_2c

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz p2, :cond_2b

    iget p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Visibility : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_2b
    const-class p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_2c
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;

    const-class v7, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz v0, :cond_2f

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz p2, :cond_2d

    iget p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "disabled : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_2d
    if-nez v1, :cond_2e

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p2, :cond_2e

    iget-object p2, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    if-eqz p2, :cond_2e

    iput-boolean p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    :cond_2e
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p2, :cond_51

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p2, :cond_51

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->getEdgeBackGestureHandler()Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-result-object p2

    if-eqz p2, :cond_51

    iput-boolean p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    goto/16 :goto_10

    :cond_2f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetGestureHintViewGroup;

    const-class v10, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    if-eqz v0, :cond_30

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    move-result-object p1

    iput-object v0, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    iput-object p1, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    goto/16 :goto_10

    :cond_30
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateGestureHintVisibility;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowGestureHint()Z

    move-result p2

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    and-int/2addr v1, p2

    iget-boolean v2, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    and-int/2addr v2, p2

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    and-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_10

    :cond_31
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ResetHintVI;

    if-eqz v0, :cond_32

    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object p2, p1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;-><init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_32
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;

    if-eqz v0, :cond_33

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    iget-boolean v0, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iput p1, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    iput-boolean v0, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    goto/16 :goto_10

    :cond_33
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;

    if-eqz v0, :cond_34

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget p2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    iput p2, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    iget-object p2, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    iget-wide v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    iget v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;-><init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;IIJ)V

    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    :cond_34
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    if-eqz v0, :cond_37

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-wide v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->flag:J

    const-string/jumbo v5, "set "

    const-string v7, " : "

    invoke-static {v5, v3, v4, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->value:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_35
    iget-wide v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->flag:J

    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->value:Z

    invoke-virtual {v6, v3, v4, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    goto :goto_b

    :cond_36
    invoke-virtual {v6, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto/16 :goto_10

    :cond_37
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;

    if-eqz v0, :cond_38

    sget-object p1, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p2, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    goto/16 :goto_10

    :cond_38
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRegionSamplingRect;

    if-eqz v0, :cond_39

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    goto/16 :goto_10

    :cond_39
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;

    if-eqz v0, :cond_3f

    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-class v2, Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    array-length p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_3b

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10700a1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v4, v3, [F

    move v5, v9

    :goto_c
    if-ge v5, v3, :cond_3a

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_3a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sput-object v4, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    :cond_3b
    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    array-length p1, p1

    if-nez p1, :cond_3d

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10700ab

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v4, v3, [F

    :goto_d
    if-ge v9, v3, :cond_3c

    invoke-virtual {p1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    aput v5, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_3c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sput-object v4, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    :cond_3d
    if-eqz p2, :cond_3e

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarBackGestureSentivitySub()I

    move-result p1

    goto :goto_e

    :cond_3e
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarBackGestureSentivity()I

    move-result p1

    :goto_e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "back_gesture_inset_scale_left"

    sget-object v2, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    aget v2, v2, p1

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "back_gesture_inset_scale_right"

    sget-object v2, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    aget v2, v2, p1

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "bottom_gesture_inset_scale"

    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    aget p1, v1, p1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :cond_3f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ShowA11ySwipeUpTipPopup;

    if-eqz v0, :cond_40

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->showA11ySwipeUpTipPopup()V

    goto/16 :goto_10

    :cond_40
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavigationIcon;

    if-eqz v0, :cond_41

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    goto/16 :goto_10

    :cond_41
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarIconsAndHints;

    if-eqz v0, :cond_42

    invoke-virtual {p0, v7, v9}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateTaskbarButtonIconsAndHints()V

    goto/16 :goto_10

    :cond_42
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    if-eqz v0, :cond_43

    invoke-virtual {p0, v7, v9}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p1, :cond_51

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    goto/16 :goto_10

    :cond_43
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarLayoutParams;

    if-eqz v0, :cond_44

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    goto/16 :goto_10

    :cond_44
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateA11YStatus;

    if-eqz v0, :cond_46

    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p1, :cond_45

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    :cond_45
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateA11yStatus()V

    goto/16 :goto_10

    :cond_46
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, v9, v9, v9}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_10

    :cond_47
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;

    if-eqz v0, :cond_4d

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;

    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean p2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    if-eqz p2, :cond_49

    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p2, :cond_48

    check-cast p2, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    iget-object v8, p2, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    :cond_48
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz p2, :cond_4b

    invoke-interface {p2, v8}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    goto :goto_f

    :cond_49
    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p2, :cond_4a

    check-cast p2, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    iget-object v8, p2, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    :cond_4a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz p2, :cond_4b

    invoke-interface {p2, v8}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    :cond_4b
    :goto_f
    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p2, :cond_51

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_51

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    xor-int/2addr p1, v5

    iget-object v0, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p1, :cond_4c

    iget-object p1, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_10

    :cond_4c
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    goto :goto_10

    :cond_4d
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;

    if-eqz v0, :cond_4f

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1, v9}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result p1

    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    if-eqz p1, :cond_4e

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateActiveIndicatorSpringParams(FF)V

    goto :goto_10

    :cond_4e
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateActiveIndicatorSpringParams(FF)V

    goto :goto_10

    :cond_4f
    instance-of p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateDefaultNavigationBarStatus;

    if-eqz p1, :cond_51

    invoke-virtual {p0, v11, v9}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    :cond_50
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_51

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    if-eqz p1, :cond_51

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    :catch_0
    :cond_51
    :goto_10
    return-object p0
.end method

.method public final endLogging(IZLjava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleEvent("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") value= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    iput p1, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    return-void
.end method

.method public final getModule(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    return-object p0
.end method

.method public final getProvider(II)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class p1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const p1, 0x7f0a07c7

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    return-object p0
.end method

.method public final handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;

    const-class v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v9, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v0, v8, v9, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    const-class v8, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;->navigationBar:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, v8, v4, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_0
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    iget-object v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    iget-boolean v9, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    xor-int/2addr v10, v5

    and-int/2addr v9, v10

    iput-boolean v9, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    iget-boolean v9, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    xor-int/2addr v10, v5

    and-int/2addr v9, v10

    iput-boolean v9, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_1
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    iget-object v9, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v11, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v12, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    if-eqz v4, :cond_5

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    iget-object v13, v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v4, v13, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    iget-object v4, v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;->navbarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, v11, v4, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    const-class v4, Landroid/content/Context;

    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {v11, v4, v8}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    invoke-virtual {v0, v12, v11, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v8, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v8, v4}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v8

    iput v8, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    if-eqz v4, :cond_3

    const-class v4, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    invoke-virtual {v10, v4}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    if-eqz v4, :cond_3

    new-instance v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    iget-object v11, v4, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    const-class v12, Lcom/android/systemui/util/DesktopManager;

    if-eqz v11, :cond_2

    sget-object v14, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v14, v12}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v14, v11}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_2
    new-instance v11, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    invoke-direct {v11, v8}, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;)V

    iput-object v11, v4, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    sget-object v11, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v11, v12}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/util/DesktopManager;

    if-eqz v11, :cond_3

    iget-object v4, v4, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    invoke-interface {v11, v4}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    invoke-interface {v11}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$1;->accept(Ljava/lang/Object;)V

    :cond_3
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    if-eqz v4, :cond_4

    const-class v4, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-virtual {v10, v4}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    if-eqz v4, :cond_4

    new-instance v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$2;

    invoke-direct {v8, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$2;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v4, v8}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$2;)V

    :cond_4
    invoke-virtual {v13}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    move-result-object v4

    iget-object v8, v9, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v8, :cond_a

    invoke-interface {v8, v4}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    goto/16 :goto_1

    :cond_5
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    if-eqz v4, :cond_7

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    move-result-object v4

    iget-object v8, v9, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v8, :cond_6

    invoke-interface {v8, v4}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    :cond_6
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v4, v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-virtual {v0, v11, v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v8, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v8, v4}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    invoke-virtual {v0, v12, v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavBarHiddenByKnox()Z

    move-result v4

    if-nez v4, :cond_a

    const-wide v8, 0x2000000000L

    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v4, v8, v9, v6}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {v4, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto :goto_1

    :cond_7
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    if-eqz v4, :cond_8

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    const-class v8, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v8, v4, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-virtual {v0, v11, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v8, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v10, v8}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v8}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v8

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    goto :goto_1

    :cond_8
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    if-eqz v4, :cond_9

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;->rotationLocked:Z

    iput-boolean v4, v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLocked:Z

    iget-object v8, v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/function/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    instance-of v4, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    if-eqz v4, :cond_a

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    iget v4, v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;->transitionMode:I

    iput v4, v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->navbarTransitionMode:I

    :cond_a
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;

    move-object/from16 v9, p1

    invoke-direct {v8, v0, v9, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$2;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$2;

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    iget v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v11, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iput v10, v11, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    iget-boolean v12, v11, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->loggingStarted:Z

    if-nez v12, :cond_b

    move v12, v6

    goto/16 :goto_d

    :cond_b
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    if-eqz v12, :cond_c

    move v12, v5

    goto :goto_2

    :cond_c
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    :goto_2
    if-eqz v12, :cond_d

    move v12, v5

    goto :goto_3

    :cond_d
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    :goto_3
    if-eqz v12, :cond_e

    move v12, v5

    goto :goto_4

    :cond_e
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    :goto_4
    if-eqz v12, :cond_f

    move v12, v5

    goto :goto_5

    :cond_f
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    :goto_5
    if-eqz v12, :cond_10

    move v12, v5

    goto :goto_6

    :cond_10
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    :goto_6
    if-eqz v12, :cond_11

    move v12, v5

    goto :goto_7

    :cond_11
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    :goto_7
    if-eqz v12, :cond_12

    move v12, v5

    goto :goto_8

    :cond_12
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    :goto_8
    if-eqz v12, :cond_13

    move v12, v5

    goto :goto_9

    :cond_13
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    :goto_9
    if-eqz v12, :cond_14

    move v12, v5

    goto :goto_a

    :cond_14
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    :goto_a
    if-eqz v12, :cond_15

    move v12, v5

    goto :goto_b

    :cond_15
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    :goto_b
    if-eqz v12, :cond_16

    move v12, v5

    goto :goto_c

    :cond_16
    instance-of v12, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    :goto_c
    xor-int/2addr v12, v5

    iput-boolean v12, v11, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    :goto_d
    if-eqz v12, :cond_18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e
    if-ge v6, v10, :cond_17

    const-string v13, "--"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "handleEvent("

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " [Module] "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v11, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v10, "Store"

    invoke-virtual {v9, v10, v6}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    :cond_18
    iput-boolean v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v10, v9, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    invoke-static {v10}, Lcom/android/systemui/navigationbar/model/NavBarStates;->copy$default(Lcom/android/systemui/navigationbar/model/NavBarStates;)Lcom/android/systemui/navigationbar/model/NavBarStates;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    invoke-direct {v12, v1, v6, v10, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;-><init>(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;Lcom/android/systemui/navigationbar/store/NavBarStateManager;Lcom/android/systemui/navigationbar/model/NavBarStates;I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v10, v7

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/navigationbar/bandaid/Band;

    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v14, :cond_1a

    iget v14, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v15, v13, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    if-eqz v15, :cond_19

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    goto :goto_10

    :cond_19
    move-object v15, v7

    :goto_10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "[Band]"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v14, v5}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_1a
    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v5, v13, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Function;

    if-eqz v5, :cond_1b

    invoke-interface {v5, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_11

    :cond_1b
    const/4 v5, 0x0

    :goto_11
    instance-of v7, v5, Lkotlin/Unit;

    if-nez v7, :cond_1d

    if-nez v5, :cond_1c

    const/4 v10, 0x0

    goto :goto_12

    :cond_1c
    move-object v10, v5

    :cond_1d
    :goto_12
    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_f

    :cond_1e
    invoke-virtual {v9, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/bandaid/Band;

    iget-object v5, v4, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    if-eqz v5, :cond_1f

    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v5, :cond_21

    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v6, v4, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :cond_20
    const/4 v6, 0x0

    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "[Band] (afterAction) "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_21
    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v4, v4, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    invoke-interface {v4, v12}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    goto :goto_13

    :cond_22
    iget v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    if-eqz v10, :cond_23

    instance-of v1, v10, Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-nez v1, :cond_23

    invoke-virtual {v0, v2, v8, v10}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->endLogging(IZLjava/lang/Object;)V

    move-object v3, v10

    goto :goto_15

    :cond_23
    instance-of v1, v3, Lkotlin/Unit;

    if-nez v1, :cond_24

    invoke-virtual {v0, v2, v8, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->endLogging(IZLjava/lang/Object;)V

    :cond_24
    :goto_15
    return-object v3
.end method

.method public final handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V
    .locals 2

    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    instance-of v1, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    :goto_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, p1, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_6
    return-void
.end method

.method public final initDisplayDependenciesIfNeeded(ILandroid/content/Context;)V
    .locals 20

    move-object/from16 v12, p0

    move/from16 v13, p1

    iget-object v0, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v13}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v14

    if-eqz v14, :cond_4

    iget-object v0, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/content/Context;

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1, v13}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    iget-object v0, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v10, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    new-instance v9, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v3, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v8, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    const/16 v16, 0x0

    iget-object v4, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    iget-object v5, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget-object v6, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iget-object v7, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    const/16 v17, 0x100

    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v15, v9

    move-object/from16 v9, v16

    move-object/from16 v19, v10

    move/from16 v10, v17

    move-object/from16 v16, v14

    move-object v14, v11

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/settings/UserTracker;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object/from16 v16, v14

    if-nez v13, :cond_2

    iget-object v0, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->onNavigationBarCreated()V

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_3

    iget-object v0, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iput-object v12, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const-class v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v12, v1, v0, v13}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iput-object v0, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    const-string v0, "Failed to add display dependencies because display "

    const-string v1, " returns null."

    invoke-static {v13, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setProvider(IILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    check-cast p3, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    invoke-direct {p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V

    invoke-interface {p0, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    check-cast p3, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-direct {p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V

    invoke-interface {p0, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    const-class p2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
