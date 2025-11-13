.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    return-void
.end method

.method public onBiometricDetected(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    return-void
.end method

.method public onBiometricEnrollmentStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onDlsViewModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 0

    return-void
.end method

.method public onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    return-void
.end method

.method public onEmergencyStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onEnabledTrustAgentsChanged(I)V
    .locals 0

    return-void
.end method

.method public onFaceUnlockOptionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFaceWidgetFullscreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFacesCleared()V
    .locals 0

    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 0

    return-void
.end method

.method public onFingerprintsCleared()V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onForceIsDismissibleChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardDismissAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onKeyguardGoingAway()V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    return-void
.end method

.method public onNonStrongBiometricAllowedChanged(I)V
    .locals 0

    return-void
.end method

.method public onOfflineStateChanged()V
    .locals 0

    return-void
.end method

.method public onOwnerInfoChanged()V
    .locals 0

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onRemoteLockInfoChanged()V
    .locals 0

    return-void
.end method

.method public onRequireUnlockForNfc()V
    .locals 0

    return-void
.end method

.method public onSecondaryLockscreenRequirementChanged(I)V
    .locals 0

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    return-void
.end method

.method public onShadeExpandedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    return-void
.end method

.method public onSimulationFailToUnlock(I)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 0

    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .locals 0

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onTimeFormatChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    return-void
.end method

.method public onTrustGrantedForCurrentUser(ZZLcom/android/keyguard/TrustGrantFlags;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    return-void
.end method

.method public onUSBRestrictionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUdfpsFingerDown()V
    .locals 0

    return-void
.end method

.method public onUdfpsFingerUp()V
    .locals 0

    return-void
.end method

.method public onUnlocking()V
    .locals 0

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method

.method public onWeatherDataChanged(Lcom/android/systemui/plugins/clocks/WeatherData;)V
    .locals 0

    return-void
.end method
