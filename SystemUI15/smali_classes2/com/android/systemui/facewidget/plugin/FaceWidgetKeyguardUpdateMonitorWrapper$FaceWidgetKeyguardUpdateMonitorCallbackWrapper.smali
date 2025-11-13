.class Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthFailed()V

    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthenticated(IZ)V

    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;)V

    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;)V

    return-void
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(Z)V

    return-void
.end method

.method public final onDeviceProvisioned()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    return-void
.end method

.method public final onDreamingStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public final onEmergencyCallAction()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    return-void
.end method

.method public final onEmergencyStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    return-void
.end method

.method public final onFailedUnlockAttemptChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onFailedUnlockAttemptChanged()V

    return-void
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onKeyguardBouncerFullyShowingChanged(Z)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method public final onLocaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLocaleChanged()V

    return-void
.end method

.method public final onLockDisabledChanged(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLockDisabledChanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLockModeChanged()V

    return-void
.end method

.method public final onLogoutEnabledChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onPhoneStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    return-void
.end method

.method public final onPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPrimaryBouncerVisibilityChanged(Z)V

    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRefreshBatteryInfo()V

    return-void
.end method

.method public final onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    return-void
.end method

.method public final onRemoteLockInfoChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRemoteLockInfoChanged()V

    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSecurityViewChanged()V

    return-void
.end method

.method public final onShadeExpandedChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onShadeExpandedChanged(Z)V

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    return-void
.end method

.method public final onSystemDialogsShowing()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSystemDialogsShowing()V

    return-void
.end method

.method public final onTelephonyCapable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    return-void
.end method

.method public final onTimeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTimeChanged()V

    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method public final onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method public final onTrustManagedChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    return-void
.end method

.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUpdateCoverState(Z)V

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserUnlocked()V

    return-void
.end method
