.class public Lcom/android/systemui/pluginlock/DisabledPluginLockMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockMediator;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/pluginlock/PluginLockMediator;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/pluginlock/PluginLock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "## DisabledPluginLockMediator ##, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisabledPluginLockMediator"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addDump(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCurrentScreenType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecureMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public goToLockedShade()V
    .locals 0

    return-void
.end method

.method public isDynamicLockEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHomeWallpaperRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRotateMenuHide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchAndHoldToEditEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchConsumablePosition(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWindowSecured()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 0

    return-void
.end method

.method public onAodTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onBarStateChanged()V
    .locals 0

    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onDataCleared()V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public onEventReceived(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFolderStateChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onNowBarItemExpanded(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/DisabledPluginLockMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/DisabledPluginLockMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 0

    return-void
.end method

.method public onPluginLoadFailed(I)V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onRootViewDetached()V
    .locals 0

    return-void
.end method

.method public onUserActivity()V
    .locals 0

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onWallpaperChanged(I)V
    .locals 0

    return-void
.end method

.method public recoverItem(I)V
    .locals 0

    return-void
.end method

.method public registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    return-void
.end method

.method public registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
    .locals 0

    return-void
.end method

.method public registerUpdateMonitor()V
    .locals 0

    return-void
.end method

.method public registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V
    .locals 0

    return-void
.end method

.method public removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    return-void
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public resetConfigs()V
    .locals 0

    return-void
.end method

.method public resetDynamicLock()V
    .locals 0

    return-void
.end method

.method public resetDynamicLockData(Z)V
    .locals 0

    return-void
.end method

.method public resetItem(IZ)V
    .locals 0

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    return-void
.end method

.method public setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V
    .locals 0

    return-void
.end method

.method public setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V
    .locals 0

    return-void
.end method

.method public setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
    .locals 0

    return-void
.end method

.method public setLockscreenEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 0

    return-void
.end method

.method public setNoSensorConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 0

    return-void
.end method

.method public setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaper(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaperHint(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaperHint(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginWallpaperState(II)V
    .locals 0

    return-void
.end method

.method public setQsExpansion(F)V
    .locals 0

    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 0

    return-void
.end method

.method public setScreenTypeChanged(I)V
    .locals 0

    return-void
.end method

.method public unregisterUpdateMonitor()V
    .locals 0

    return-void
.end method

.method public updateBiometricRecognition(Z)V
    .locals 0

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateOverlayUserTimeout(Z)V
    .locals 0

    return-void
.end method

.method public updateWindowSecureState(Z)V
    .locals 0

    return-void
.end method
