.class public abstract Lcom/android/systemui/navigationbar/TaskbarDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAppearance:I

.field public mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public final mAutoHideUiElement:Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

.field public mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public mBehavior:I

.field public mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public mDisabledFlags:I

.field public mDisplayId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public mInitialized:Z

.field public mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public final mLightBarTransitionsControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

.field public mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/TaskbarDelegate$1;

.field public mNavigationIconHints:I

.field public mNavigationMode:I

.field public mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mPipListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

.field public mPipOptional:Ljava/util/Optional;

.field public mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

.field public mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public mTaskBarWindowState:I

.field public mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

.field public final mTaskStackListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$2;

.field public mTaskbarTransientShowing:Z

.field public mTransitionMode:I

.field public mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/navigationbar/TaskbarDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate$1;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/TaskbarDelegate$1;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    new-instance v0, Lcom/android/systemui/navigationbar/TaskbarDelegate$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate$2;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    new-instance v0, Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate$3;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;I)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setTaskbarDelegate(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    return-void
.end method


# virtual methods
.method public final abortTransient(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->onTransientStateChanged()V

    :cond_2
    return-void
.end method

.method public attributesChanged(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public configurationChanged(Landroid/content/res/Resources;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->onTransientStateChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/TaskbarDelegate$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavBarHelper;->removeNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mWindowContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCallback:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz p0, :cond_3

    const-string p0, "TaskbarDelegate"

    const-string v0, "TaskbarDelegate#destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OverviewProxyService"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->disable(IIIZ)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy for disable flags."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call disable()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    iput p2, p0, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TaskbarDelegate (displayId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mNavigationIconHints="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    const-string v1, "  mNavigationMode="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    const-string v1, "  mDisabledFlags="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    const-string v1, "  mTaskBarWindowState="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    const-string v1, "  mBehavior="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBehavior:I

    const-string v1, "  mTaskbarTransientShowing="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getDisabledFlags()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getEdgeBackGestureHandler()Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLightBarTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNavigationMode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    return p0
.end method

.method public handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V
    .locals 0

    return-void
.end method

.method public final init(I)V
    .locals 4

    const-string v0, "TaskbarDelegate#init"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    iget v1, v2, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    iget v3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-ne v1, v3, :cond_1

    iget v1, v2, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    iput v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->onNavigationModeChanged(I)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavbarTaskbarStateUpdater:Lcom/android/systemui/navigationbar/TaskbarDelegate$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/NavBarHelper;->registerNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mWindowContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->initialize()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setBackAnimation(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$2;

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz p0, :cond_3

    const-string p0, "TaskbarDelegate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public isBackGestureAllowed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    return-void
.end method

.method public final onRecentsAnimationStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onRotationProposal(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OverviewProxyService"

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->rotateDisabledByPolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onRotationProposal(IZ)V

    goto :goto_1

    :cond_1
    const-string p0, "Failed to get overview proxy for proposing rotation."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "Failed to call onRotationProposal()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 6

    sget-boolean p3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p6, "OverviewProxyService"

    :try_start_0
    iget-object p3, p3, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p3, :cond_1

    check-cast p3, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p3, p1, p5}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onSystemBarAttributesChanged(II)V

    goto :goto_0

    :cond_1
    const-string p3, "Failed to get overview proxy for system bar attr change."

    invoke-static {p6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p8, "Failed to call onSystemBarAttributesChanged()"

    invoke-static {p6, p8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean p3, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2, p7, p4}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->attributesChanged(ILjava/lang/String;Z)V

    :cond_2
    iget p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAppearance:I

    const/4 p8, 0x0

    if-eq p6, p2, :cond_6

    iput p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAppearance:I

    iget-boolean p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-static {p2, p6}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    move-result p6

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    if-eq v0, p6, :cond_5

    iput p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    iget-object p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_3
    if-eqz p3, :cond_4

    iget p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    invoke-virtual {p0, p6}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->transitionModeChanged(I)V

    :cond_4
    const/4 p6, 0x1

    goto :goto_1

    :cond_5
    move p6, p8

    :goto_1
    move v3, p6

    goto :goto_2

    :cond_6
    move v3, p8

    :goto_2
    iget p6, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-ne p1, p6, :cond_8

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p3, :cond_7

    iget p8, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    :cond_7
    move v2, p8

    move v1, p2

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IIZZLjava/lang/String;)V

    :cond_8
    iget p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBehavior:I

    if-eq p1, p5, :cond_9

    iput p5, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBehavior:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    :cond_9
    return-void
.end method

.method public final onTaskbarAutohideSuspend(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    :goto_0
    return-void
.end method

.method public final onTransientStateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTransitionMode:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->transitionModeChanged(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const/16 v3, 0x10

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v2, :cond_2

    iput v0, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->transitionStateChanged(Z)V

    :cond_3
    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 5

    iget-object p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/navigationbar/NavBarHelper;->isImeShown(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "setImeWindowStatus displayId="

    const-string v3, " vis="

    const-string v4, " backDisposition="

    invoke-static {p1, p3, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " showImeSwitcher="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " imeShown="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TaskbarDelegate"

    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p5, :cond_3

    move v0, v1

    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    invoke-static {p1, p4, p2, v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->calculateBackDispositionHints(IIZZ)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    if-eq p1, p2, :cond_4

    iput p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    :cond_4
    return-void
.end method

.method public final setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OverviewProxyService"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onNavigationBarLumaSamplingEnabled(IZ)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy to enable/disable nav bar lumasampling"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call onNavigationBarLumaSamplingEnabled()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setWindowState(III)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    if-eq p1, p3, :cond_0

    iput p3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    :cond_0
    return-void
.end method

.method public final showPinningEnterExitToast(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const p1, 0x7f1310e6

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const p1, 0x7f1310e5

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final showPinningEscapeToast()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public final showTransient(IIZ)V
    .locals 0

    iget p3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskbarTransientShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->onTransientStateChanged()V

    :cond_2
    return-void
.end method

.method public final toggleTaskbar()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onTaskbarToggled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TaskbarDelegate"

    const-string v1, "onTaskbarToggled() failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public transitionModeChanged(I)V
    .locals 0

    return-void
.end method

.method public transitionStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public updateA11yStatus()V
    .locals 0

    return-void
.end method

.method public updateActiveIndicatorSpringParams(FF)V
    .locals 0

    return-void
.end method

.method public final updateSysuiFlags()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-wide v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    const-wide/16 v2, 0x10

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-wide/16 v9, 0x20

    and-long/2addr v0, v9

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {v1, v9, v10, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    move v0, v8

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    const-wide/32 v2, 0x40000

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v5

    :goto_3
    const-wide/32 v2, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_4

    :cond_4
    move v0, v5

    :goto_4
    const-wide/16 v2, 0x80

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_5

    :cond_5
    move v0, v5

    :goto_5
    const-wide/16 v2, 0x100

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_6

    :cond_6
    move v0, v5

    :goto_6
    const-wide/32 v2, 0x400000

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskBarWindowState:I

    if-nez v0, :cond_7

    move v0, v8

    goto :goto_7

    :cond_7
    move v0, v5

    :goto_7
    xor-int/2addr v0, v8

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBehavior:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    move v5, v8

    :cond_8
    const-wide/32 v2, 0x20000

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    invoke-virtual {v1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateTaskbarButtonIconsAndHints()V
    .locals 0

    return-void
.end method
