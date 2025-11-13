.class public interface abstract Lcom/android/keyguard/KeyguardSecUpdateMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public addFailedFMMUnlockAttempt(I)V
    .locals 0

    return-void
.end method

.method public checkValidPrevCredentialType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clearESimRemoved()V
    .locals 0

    return-void
.end method

.method public clearFailedUnlockAttempts(Z)V
    .locals 0

    return-void
.end method

.method public clearFingerBadQualityCounts()V
    .locals 0

    return-void
.end method

.method public dispatchCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;)V
    .locals 0

    return-void
.end method

.method public dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public dispatchDlsBiometricMode(Z)V
    .locals 0

    return-void
.end method

.method public dispatchDlsViewMode(I)V
    .locals 0

    return-void
.end method

.method public dispatchDualDarInnerLockScreenState(IZ)V
    .locals 0

    return-void
.end method

.method public dispatchForceStartFingerprint()V
    .locals 0

    return-void
.end method

.method public dispatchNotiStarState(Z)V
    .locals 0

    return-void
.end method

.method public dispatchSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    return-void
.end method

.method public dispatchStartSubscreenBiometric(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public dispatchStartSubscreenFingerprint()V
    .locals 0

    return-void
.end method

.method public dispatchStartedEarlyWakingUp(I)V
    .locals 0

    return-void
.end method

.method public dispatchStatusBarState(Z)V
    .locals 0

    return-void
.end method

.method public dispatchStopSubscreenBiometric()V
    .locals 0

    return-void
.end method

.method public dispatchSubScreenBouncerStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public dumpAllUsers(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public enableSecurityDebug()V
    .locals 0

    return-void
.end method

.method public getBiometricType()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getBiometricType(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCredentialTypeForUser(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFaceStrongBiometric()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFailedBiometricUnlockAttempts()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFailedBiometricUnlockAttempts(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFailedFMMUnlockAttempt(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFingerprintAuthenticated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKeyguardBatteryMessage(Landroid/content/Intent;)Landroid/os/Message;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLockoutBiometricAttemptDeadline()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxFailedUnlockAttempts()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrevCredentialType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRemainingAttempt(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getRemainingAttemptsBeforePermanentLock()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getRemainingAttemptsBeforeWipe()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteLockType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleSecMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public hasRedactedNotifications()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is2StepVerification()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isActiveDismissAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAllEnabledSlotOutOfService()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAllSimState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimationDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthenticatedWithBiometric(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAutoWipe()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricErrorLockoutPermanent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricsAuthenticatedOnLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBouncerFullyShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCameraDisabledByPolicy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCarrierLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCoverClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDismissActionExist()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDarInnerAuthRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDarInnerAuthShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDisplayPolicyAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isESimEmbedded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isESimRemoveButtonClicked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEarlyWakeUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmergencyCallOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledWof()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFMMLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFaceOptionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintDisabledWithBadQuality()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintLeave()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintOptionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForcedLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForgotPasswordView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHiddenInputContainer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIccBlockedPermanently()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInDisplayFingerprintMarginAccepted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardUnlocking()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKidsModeRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLockScreenRotationAllowed$1()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNowBarExpandMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOutOfService()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPerformingWipeOut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPermanentLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteLockEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteLockMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOffMemoRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShortcutLaunchInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowEditModeRequest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimDisabledPermanently()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimPinPassed(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTimerRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUdfpsFingerDown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockCompleted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateSecurityMessage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserUnlocked$1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyFailedUnlockAttemptChanged()V
    .locals 0

    return-void
.end method

.method public onLockIconPressed()V
    .locals 0

    return-void
.end method

.method public registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    return-void
.end method

.method public removeESim(I)V
    .locals 0

    return-void
.end method

.method public removeMaskViewForOpticalFpSensor()V
    .locals 0

    return-void
.end method

.method public requestSessionClose()V
    .locals 0

    return-void
.end method

.method public resetSimPinPassed(I)V
    .locals 0

    return-void
.end method

.method public runSystemUserOnly(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method public sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public sendKeyguardStateUpdated(ZZZZ)V
    .locals 0

    return-void
.end method

.method public sendPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public setDisableBiometricBySecurityDialog(Z)V
    .locals 0

    return-void
.end method

.method public setDismissActionExist(Z)V
    .locals 0

    return-void
.end method

.method public setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    return-void
.end method

.method public setFaceWidgetFullScreenMode(Z)V
    .locals 0

    return-void
.end method

.method public setFocusForBiometrics(IZ)V
    .locals 0

    return-void
.end method

.method public setHasRedactedNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setNowBarExpandMode(Z)V
    .locals 0

    return-void
.end method

.method public setPanelExpandingStarted(Z)V
    .locals 0

    return-void
.end method

.method public setScreenOrientationNoSensorValue(Z)V
    .locals 0

    return-void
.end method

.method public setShortcutLaunchInProgress(Z)V
    .locals 0

    return-void
.end method

.method public setUnlockingKeyguard(Z)V
    .locals 0

    return-void
.end method

.method public setupLocked$2()V
    .locals 0

    return-void
.end method

.method public updateBatteryRemainTime(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public updateCarrierLock(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateEsimState(II)V
    .locals 0

    return-void
.end method

.method public updateFMMLock(IZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updatePermanentLock(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 0

    return-void
.end method

.method public updateSIPShownState(Z)V
    .locals 0

    return-void
.end method

.method public updateUserUnlockNotification(I)V
    .locals 0

    return-void
.end method

.method public updatedSimPinPassed(I)V
    .locals 0

    return-void
.end method
