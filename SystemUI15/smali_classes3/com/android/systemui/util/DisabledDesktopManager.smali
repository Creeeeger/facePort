.class public Lcom/android/systemui/util/DisabledDesktopManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDesktopBarConnected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStandalone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchpadEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyDismissKeyguard()V
    .locals 0

    return-void
.end method

.method public notifyKeyguardLockout(Z)V
    .locals 0

    return-void
.end method

.method public notifyKeyguardLockout(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public notifyOccluded(Z)V
    .locals 0

    return-void
.end method

.method public notifyPrivacyItemsChanged(Z)V
    .locals 0

    return-void
.end method

.method public notifyScreenState(Z)V
    .locals 0

    return-void
.end method

.method public notifyShowKeyguard()V
    .locals 0

    return-void
.end method

.method public notifyTrustChanged(IZ)V
    .locals 0

    return-void
.end method

.method public notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    return-void
.end method

.method public removeDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 0

    return-void
.end method

.method public setAirplaneMode(ZI)V
    .locals 0

    return-void
.end method

.method public setBtTetherIcon(ZI)V
    .locals 0

    return-void
.end method

.method public setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setDesktopBluetoothCallback(Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;)V
    .locals 0

    return-void
.end method

.method public setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 0

    return-void
.end method

.method public setMPTCPIcon(ZIII)V
    .locals 0

    return-void
.end method

.method public setMobileIcon(ZIIIIZII)V
    .locals 0

    return-void
.end method

.method public setWifiIcon(ZII)V
    .locals 0

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    return-void
.end method
