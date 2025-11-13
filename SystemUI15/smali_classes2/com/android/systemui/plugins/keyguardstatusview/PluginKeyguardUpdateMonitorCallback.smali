.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract dismissFaceWidgetFullScreen()V
.end method

.method public abstract onBiometricAcquired()V
.end method

.method public abstract onBiometricAuthFailed()V
.end method

.method public abstract onBiometricAuthenticated(IZ)V
.end method

.method public abstract onBiometricError(ILjava/lang/String;)V
.end method

.method public abstract onBiometricHelp(ILjava/lang/String;)V
.end method

.method public abstract onBiometricLockoutChanged(Z)V
.end method

.method public abstract onBiometricRunningStateChanged(Z)V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onClockVisibilityChanged()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDevicePolicyManagerStateChanged()V
.end method

.method public abstract onDeviceProvisioned()V
.end method

.method public abstract onDexModeChanged(Z)V
.end method

.method public abstract onDlsViewModeChanged(I)V
.end method

.method public abstract onDreamingStateChanged(Z)V
.end method

.method public abstract onEmergencyCallAction()V
.end method

.method public abstract onEmergencyStateChanged(I)V
.end method

.method public abstract onFaceUnlockStateChanged(ZI)V
.end method

.method public abstract onFailedUnlockAttemptChanged()V
.end method

.method public abstract onFinishedGoingToSleep(I)V
.end method

.method public abstract onHasLockscreenWallpaperChanged(Z)V
.end method

.method public abstract onICCCardStateChanged(Ljava/lang/String;)V
.end method

.method public abstract onKeyguardBouncerFullyShowingChanged(Z)V
.end method

.method public abstract onKeyguardBouncerStateChanged(Z)V
.end method

.method public abstract onKeyguardVisibilityChanged(Z)V
.end method

.method public abstract onLocaleChanged()V
.end method

.method public abstract onLockDisabledChanged()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7dd
    .end annotation
.end method

.method public abstract onLockModeChanged()V
.end method

.method public abstract onLogoutEnabledChanged()V
.end method

.method public abstract onNotifyKeyguardLockout()V
.end method

.method public abstract onOpenThemeChangeStarted()V
.end method

.method public abstract onOpenThemeChanged()V
.end method

.method public abstract onOpenThemeReApply()V
.end method

.method public abstract onPackageAdded(Ljava/lang/String;)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;)V
.end method

.method public abstract onPackageDataCleared(Ljava/lang/String;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Z)V
.end method

.method public abstract onPhoneStateChanged(I)V
.end method

.method public abstract onPrimaryBouncerVisibilityChanged(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d3
    .end annotation
.end method

.method public abstract onRefreshBatteryInfo()V
.end method

.method public abstract onRefreshCarrierInfo()V
.end method

.method public abstract onRemoteLockInfoChanged()V
.end method

.method public abstract onRingerModeChanged(I)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onSecurityModeChanged(Z)V
.end method

.method public abstract onSecurityViewChanged()V
.end method

.method public abstract onSetBackground(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onShadeExpandedChanged(Z)V
.end method

.method public abstract onSimStateChanged(III)V
.end method

.method public abstract onSimulationUnlock(I)V
.end method

.method public abstract onStartedGoingToSleep(I)V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onStrongAuthStateChanged(I)V
.end method

.method public abstract onSystemDialogsShowing()V
.end method

.method public abstract onTelephonyCapable(Z)V
.end method

.method public abstract onTimeChanged()V
.end method

.method public abstract onTimeZoneChanged(Ljava/util/TimeZone;)V
.end method

.method public abstract onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
.end method

.method public abstract onTrustChanged(I)V
.end method

.method public abstract onTrustGrantedWithFlags(II)V
.end method

.method public abstract onTrustManagedChanged(I)V
.end method

.method public abstract onUpdateCoverState(Z)V
.end method

.method public abstract onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x408
    .end annotation
.end method

.method public abstract onUserInfoChanged(I)V
.end method

.method public abstract onUserSwitchComplete(I)V
.end method

.method public abstract onUserSwitching(I)V
.end method

.method public abstract onUserUnlocked()V
.end method

.method public abstract showBackgroundAuthToast(I)V
.end method

.method public abstract updateBackgroundAuthToast(ZI)V
.end method
