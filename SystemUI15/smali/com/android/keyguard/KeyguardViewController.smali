.class public interface abstract Lcom/android/keyguard/KeyguardViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract blockPanelExpansionFromCurrentTouch()V
.end method

.method public abstract dismissAndCollapse()V
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZZ)V
    .locals 0

    return-void
.end method

.method public folderOpenAndDismiss()V
    .locals 0

    return-void
.end method

.method public getBouncerMessage()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIncorrectBouncerMessage()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockIconContainer()Landroid/view/ViewGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getViewRootImpl()Landroid/view/ViewRootImpl;
.end method

.method public abstract hide(JJ)V
.end method

.method public abstract hideAlternateBouncer(Z)V
.end method

.method public interceptRestKey(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isBouncerShowing()Z
.end method

.method public abstract isGoingToNotificationShade()Z
.end method

.method public isLaunchEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPanelFullyCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isUnlockWithWallpaper()Z
.end method

.method public abstract keyguardGoingAway()V
.end method

.method public abstract notifyKeyguardAuthenticated(Z)V
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDismissCancelled()V
    .locals 0

    return-void
.end method

.method public abstract onFinishedGoingToSleep()V
.end method

.method public abstract onStartedGoingToSleep()V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onWakeAndUnlock()V
    .locals 0

    return-void
.end method

.method public postSetOccluded(Z)V
    .locals 0

    return-void
.end method

.method public prepareSafeUIBouncer()V
    .locals 0

    return-void
.end method

.method public abstract primaryBouncerIsOrWillBeShowing()Z
.end method

.method public abstract registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V
.end method

.method public registerLockIconContainer(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public requestUnlock(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract reset(Z)V
.end method

.method public resetKeyguardDismissAction()V
    .locals 0

    return-void
.end method

.method public sendKeyguardViewState(ZZZ)V
    .locals 0

    return-void
.end method

.method public abstract setKeyguardGoingAwayState(Z)V
.end method

.method public setLaunchEditMode()V
    .locals 0

    return-void
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract setOccluded(ZZ)V
.end method

.method public setShowSwipeBouncer(Z)V
    .locals 0

    return-void
.end method

.method public abstract shouldSubtleWindowAnimationsForUnlock()V
.end method

.method public abstract show(Landroid/os/Bundle;)V
.end method

.method public abstract showPrimaryBouncer(Z)V
.end method

.method public abstract startPreHideAnimation(Ljava/lang/Runnable;)V
.end method

.method public updateBouncerNavigationBar(Z)V
    .locals 0

    return-void
.end method

.method public updateDlsNaviBarVisibility()V
    .locals 0

    return-void
.end method

.method public updateKeyguardUnlocking()V
    .locals 0

    return-void
.end method

.method public updateLastKeyguardUnlocking()V
    .locals 0

    return-void
.end method

.method public updateLockoutWarningMessage()V
    .locals 0

    return-void
.end method

.method public updateNavigationBarVisibility()V
    .locals 0

    return-void
.end method
