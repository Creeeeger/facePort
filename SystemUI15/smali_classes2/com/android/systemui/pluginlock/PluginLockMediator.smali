.class public interface abstract Lcom/android/systemui/pluginlock/PluginLockMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract addDump(Ljava/lang/String;)V
.end method

.method public abstract getCurrentScreenType()I
.end method

.method public abstract getDynamicLockData()Ljava/lang/String;
.end method

.method public abstract getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.end method

.method public abstract getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
.end method

.method public abstract getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.end method

.method public abstract getSecureMode()I
.end method

.method public abstract goToLockedShade()V
.end method

.method public abstract isDynamicLockEnabled()Z
.end method

.method public abstract isHomeWallpaperRequired(I)Z
.end method

.method public abstract isRotateMenuHide()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isTouchAndHoldToEditEnabled()Z
.end method

.method public abstract isTouchConsumablePosition(FF)Z
.end method

.method public abstract isWindowSecured()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract onAodTransitionEnd()V
.end method

.method public abstract onBarStateChanged()V
.end method

.method public abstract onBarStateChanged(I)V
.end method

.method public abstract onDataCleared()V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onEventReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onFolderStateChanged(ZZ)V
.end method

.method public abstract onNowBarItemExpanded(Z)V
.end method

.method public abstract onReady()V
.end method

.method public abstract onRootViewAttached(Landroid/view/ViewGroup;)V
.end method

.method public abstract onRootViewDetached()V
.end method

.method public abstract onUserActivity()V
.end method

.method public abstract onViewModeChanged(I)V
.end method

.method public abstract onWallpaperChanged(I)V
.end method

.method public abstract recoverItem(I)V
.end method

.method public abstract registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
.end method

.method public abstract registerUpdateMonitor()V
.end method

.method public abstract registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V
.end method

.method public abstract removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract requestDismissKeyguard(Landroid/content/Intent;)V
.end method

.method public abstract resetConfigs()V
.end method

.method public abstract resetDynamicLock()V
.end method

.method public abstract resetDynamicLockData(Z)V
.end method

.method public abstract resetItem(IZ)V
.end method

.method public abstract setDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
.end method

.method public abstract setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V
.end method

.method public abstract setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V
.end method

.method public abstract setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
.end method

.method public abstract setLockscreenEnabled(Z)V
.end method

.method public abstract setLockscreenTimer(J)V
.end method

.method public abstract setNoSensorConsumer(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
.end method

.method public abstract setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
.end method

.method public abstract setPluginWallpaper(IIILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPluginWallpaper(IILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaperHint(ILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaperHint(Ljava/lang/String;)V
.end method

.method public abstract setPluginWallpaperState(II)V
.end method

.method public abstract setQsExpansion(F)V
.end method

.method public abstract setScreenOrientation(ZZ)V
.end method

.method public abstract setScreenTypeChanged(I)V
.end method

.method public abstract unregisterUpdateMonitor()V
.end method

.method public abstract updateBiometricRecognition(Z)V
.end method

.method public abstract updateDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract updateOverlayUserTimeout(Z)V
.end method

.method public abstract updateWindowSecureState(Z)V
.end method
