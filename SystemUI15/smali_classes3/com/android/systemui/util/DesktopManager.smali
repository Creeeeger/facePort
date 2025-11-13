.class public interface abstract Lcom/android/systemui/util/DesktopManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
.end method

.method public abstract isDesktopBarConnected()Z
.end method

.method public abstract isDesktopMode()Z
.end method

.method public abstract isDualView()Z
.end method

.method public abstract isStandalone()Z
.end method

.method public abstract isTouchpadEnabled()Z
.end method

.method public abstract notifyDismissKeyguard()V
.end method

.method public abstract notifyKeyguardLockout(Z)V
.end method

.method public abstract notifyKeyguardLockout(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract notifyOccluded(Z)V
.end method

.method public abstract notifyPrivacyItemsChanged(Z)V
.end method

.method public abstract notifyScreenState(Z)V
.end method

.method public abstract notifyShowKeyguard()V
.end method

.method public abstract notifyTrustChanged(IZ)V
.end method

.method public abstract notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
.end method

.method public abstract removeDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
.end method

.method public abstract setAirplaneMode(ZI)V
.end method

.method public abstract setBtTetherIcon(ZI)V
.end method

.method public abstract setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
.end method

.method public abstract setDesktopBluetoothCallback(Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;)V
.end method

.method public abstract setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
.end method

.method public abstract setMPTCPIcon(ZIII)V
.end method

.method public abstract setMobileIcon(ZIIIIZII)V
.end method

.method public abstract setWifiIcon(ZII)V
.end method

.method public abstract unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
.end method
