.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;


# instance fields
.field public final FORCE_SHOW_NAVIGATION_BAR:I

.field public final buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

.field public final context:Landroid/content/Context;

.field public final displayId:I

.field public final featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

.field public final keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

.field public keyguardShowing:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    const/high16 p1, 0x800000

    iput p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;-><init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    return-void
.end method


# virtual methods
.method public final forceSetBackGesture(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    return-void
.end method

.method public final getBarDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    return p0
.end method

.method public final getBarLayoutParamsProvider()Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    return-object p0
.end method

.method public final getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    return-object p0
.end method

.method public final getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0
.end method

.method public final getDisabledFlags()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    return p0
.end method

.method public final getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    return-object p0
.end method

.method public final getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    new-instance v1, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v2, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V

    sput-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    :cond_0
    return-object v0
.end method

.method public final getNavigationBarContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    return-object p0
.end method

.method public final isCoverDisplayNavBarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isCoverDisplayNavBarEnabled()Z

    move-result p0

    return p0
.end method

.method public final isCoverLargeScreenTaskEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardShowing:Z

    return p0
.end method

.method public final registerKeyguardStateCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetScheduleAutoHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NavigationBar"

    const-string v1, "resetAutoHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    return-void
.end method

.method public final setBarLayoutParamsProvider(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    return-void
.end method

.method public final setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavigationBarColor()V

    :cond_0
    return-void
.end method

.method public final setDefaultBarLayoutParamsProvider()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    return-void
.end method

.method public final setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    return-void
.end method

.method public final setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    if-eqz p2, :cond_0

    :try_start_1
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p0, p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int p0, p0

    and-int/2addr p0, p2

    :goto_0
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p0, "SamsungPluginNavigationBar"

    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setIconThemeAlpha(F)V

    return-void
.end method

.method public final setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutProviderView()V

    return-void
.end method

.method public final setRotationLockAtAngle(ZI)V
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    const-string v0, "SamsungPluginNavigationBar#setRotationLockAtAngle"

    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ILjava/lang/String;Z)V

    return-void
.end method

.method public final setRotationLocked(Z)V
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    const-string v0, "SamsungPluginNavigationBar#setRotationLocked"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public final unregisterKeyguardStateCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateActiveIndicatorSpringParams(FF)V

    return-void
.end method

.method public final updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateBackPanelColor(IIII)V

    return-void
.end method

.method public final updateIconsAndHints(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavBarLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOpaqueColor(I)V

    return-void
.end method
