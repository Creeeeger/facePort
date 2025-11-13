.class public interface abstract Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public createBatteryView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getBouncerMessage()Landroid/os/Bundle;
.end method

.method public abstract getIncorrectBouncerMessage()Landroid/os/Bundle;
.end method

.method public abstract getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
.end method

.method public getVisibleNotificationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getWallpaperUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
.end method

.method public abstract isCaptureEnabled()Z
.end method

.method public abstract isDualDarInnerAuthRequired()Z
.end method

.method public abstract isFullscreenBouncer()Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isSimPinSecure()Z
.end method

.method public abstract isUserUnlocked()Z
.end method

.method public launchApp(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public abstract onClockPageClicked()V
.end method

.method public onSubScreenBouncerStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSubScreenNavBarStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestDualState(Z)V
    .locals 0

    return-void
.end method

.method public setAODVisibleState(I)V
    .locals 0

    return-void
.end method

.method public setBatteryMeterViewColor(IIF)V
    .locals 0

    return-void
.end method

.method public setDisplayStateOverrideWithDisplayId(II)V
    .locals 0

    return-void
.end method

.method public abstract setEnableDLS(Z)V
.end method

.method public abstract shouldControlScreenOff()Z
.end method

.method public abstract startBiometricState()V
.end method

.method public abstract startFingerprintState()V
.end method

.method public startSubHomeActivity()V
    .locals 0

    return-void
.end method

.method public startSubHomeActivityIfNeeded()V
    .locals 0

    return-void
.end method

.method public abstract stopBiometricState()V
.end method

.method public abstract updateBiometricState()V
.end method

.method public updateSubScreenFallback(Z)V
    .locals 0

    return-void
.end method

.method public abstract verifyCredential(Ljava/lang/String;)V
.end method
