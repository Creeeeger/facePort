.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iget-object v0, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealEffect:Lcom/android/systemui/statusbar/LightRevealEffect;

    instance-of v0, v0, Lcom/android/systemui/statusbar/CircleReveal;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldHideLightRevealScrimOnWakeUp()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sub-float v0, v1, p1

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_2
    :goto_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz p2, :cond_4

    cmpg-float p1, p1, v1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->isFolded:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p1, :cond_4

    const-string p1, "PluginAODManager"

    const-string p2, "onAodTransitionEnd() in folded state"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 4

    const-string v0, "CentralSurfaces#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v0, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViews(ZZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-virtual {p1}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDozingState()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateReportRejectedTouchVisibility()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateReportRejectedTouchVisibility()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateTheme()V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->touchAutoDim(I)V

    const-string p1, "CentralSurfaces#updateKeyguardState"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {p1, v0}, Lcom/android/systemui/shade/ShadeSurface;->cancelPendingCollapse(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDozingState()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes$1()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->setShowSwipeBouncer(Z)V

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v1, v0

    :cond_2
    if-nez v1, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBarState( dispatchStatusBarState to "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CentralSurfaces"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStatusBarState(Z)V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->enterKeyguard()V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->unLock()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onStatePreChange(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iget-object p1, p1, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->goingToFullShade()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->onPanelCollapsed()V

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    :cond_3
    return-void
.end method
