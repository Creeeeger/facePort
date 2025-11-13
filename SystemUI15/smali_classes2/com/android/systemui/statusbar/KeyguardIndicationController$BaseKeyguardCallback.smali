.class public Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x14

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Landroid/util/Pair;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->processFrame(I)V

    :cond_1
    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->reset$1()V

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->reset$1()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showActionToUnlock()V

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p3, v0, :cond_a

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->getDeferredMessage()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->reset$1()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationHelper:Lcom/android/systemui/keyguard/util/IndicationHelper;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/keyguard/util/IndicationHelper;->shouldSuppressErrorMsg(Landroid/hardware/biometrics/BiometricSourceType;I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "KIC suppressingFaceError"

    invoke-virtual {v3, p1, p0, p2}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const v2, 0x7f130855

    const v4, 0x7f130853

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne p1, v5, :cond_4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deferred message after face auth timeout"

    invoke-virtual {v3, p2, v1, p1}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v0, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto/16 :goto_2

    :cond_1
    const-string/jumbo p0, "skip showing FACE_ERROR_TIMEOUT due to co-ex logic"

    invoke-virtual {v3, p0, v1, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iget-object v3, p2, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, p1, v3}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->access$defaultMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;Z)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object p1

    iget-object p2, p2, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    check-cast p2, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v0, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showActionToUnlock()V

    goto :goto_2

    :cond_4
    const/4 p3, 0x7

    if-eq p1, p3, :cond_6

    const/16 p3, 0x9

    if-ne p1, p3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v4

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    if-nez p3, :cond_8

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p2, p2, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v6, p2, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    :goto_1
    if-nez v6, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f130833

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_2

    :cond_a
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_c

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationHelper:Lcom/android/systemui/keyguard/util/IndicationHelper;

    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/keyguard/util/IndicationHelper;->shouldSuppressErrorMsg(Landroid/hardware/biometrics/BiometricSourceType;I)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "KIC suppressingFingerprintError"

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 12

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->updateMessage(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object v1, v1, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-ne p3, v0, :cond_1

    if-ne p1, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v5, -0x2

    if-ne p3, v0, :cond_3

    if-eq p1, v5, :cond_3

    if-eq p1, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-ne p3, v0, :cond_4

    if-ne p1, v5, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    if-eqz v0, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    if-eqz v6, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "skipped showing faceAuthFailed message due to lockout"

    invoke-virtual {v5, p1, p0, p2}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    :cond_5
    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v6, :cond_6

    const/4 v7, -0x1

    if-ne p1, v7, :cond_6

    move v7, v3

    goto :goto_3

    :cond_6
    move v7, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result v8

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    move v9, v3

    goto :goto_4

    :cond_7
    move v9, v1

    :goto_4
    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "skipped showing help message due to co-ex logic"

    invoke-virtual {v5, p1, p0, p2}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    if-ne p3, v6, :cond_9

    if-nez v7, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p3

    iget-object v0, p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p3, p2, v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->access$defaultMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;Z)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object p3

    iget-object p1, p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    check-cast p1, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    invoke-virtual {p1, p3}, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p3

    iget-object v0, p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p3, p2, v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->access$defaultMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;Z)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object p3

    iget-object p1, p1, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    check-cast p1, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    invoke-virtual {p1, p3}, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v2, v2, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_13

    const v2, 0x7f130853

    if-eqz v9, :cond_c

    const/4 v5, 0x3

    if-ne p1, v5, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto/16 :goto_7

    :cond_c
    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p2, 0x7f13082a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto/16 :goto_7

    :cond_d
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const v5, 0x7f130855

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithFace(I)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f13082c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_7

    :cond_10
    if-eqz v4, :cond_12

    if-eqz v8, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_7

    :cond_12
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_7

    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    if-eqz v0, :cond_14

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x514

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_14
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Landroid/util/Pair;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_7
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onForceIsDismissibleChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mForceIsDismissible:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130855

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onLogoutEnabledChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 11

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget v7, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v7, v2, :cond_2

    if-ne v7, v4, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    if-eqz v0, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWireless:Z

    const/16 v9, 0x8

    if-ne v7, v9, :cond_5

    if-eqz v0, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInDock:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    move v7, v3

    :goto_5
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget v7, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    if-ne v7, v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->protectedFully:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v10, Lcom/android/settingslib/fuelgauge/BatteryUtils;->sChargingStringV2Enabled:Ljava/lang/Boolean;

    if-nez v10, :cond_8

    const-string v10, "charging_string.apply_v2"

    invoke-static {v10, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/android/settingslib/fuelgauge/BatteryUtils;->sChargingStringV2Enabled:Ljava/lang/Boolean;

    :cond_8
    sget-object v10, Lcom/android/settingslib/fuelgauge/BatteryUtils;->sChargingStringV2Enabled:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f0b0016

    goto :goto_7

    :cond_9
    const v10, 0x7f0b0015

    :goto_7
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-gtz v1, :cond_a

    const/4 v4, -0x1

    goto :goto_8

    :cond_a
    if-ge v1, v9, :cond_b

    move v4, v3

    goto :goto_8

    :cond_b
    if-le v1, v7, :cond_c

    goto :goto_8

    :cond_c
    move v4, v2

    :goto_8
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    iget-boolean v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    if-ne v1, v8, :cond_d

    move v1, v2

    goto :goto_9

    :cond_d
    move v1, v3

    :goto_9
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    const/4 v1, 0x3

    iget v4, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    if-ne v4, v1, :cond_e

    const/16 v1, 0xe

    goto :goto_a

    :cond_e
    const/4 v1, 0x4

    if-ne v4, v1, :cond_f

    const/16 v1, 0xf

    goto :goto_a

    :cond_f
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    if-eqz v4, :cond_10

    const/16 v1, 0xb

    goto :goto_a

    :cond_10
    iget v4, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSlowCharger:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_11

    move v1, v7

    goto :goto_a

    :cond_11
    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-ne v4, v1, :cond_13

    iget v1, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_12

    const/16 v1, 0xd

    goto :goto_a

    :cond_12
    const/16 v1, 0xc

    goto :goto_a

    :cond_13
    const/16 v1, 0xa

    :goto_a
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChangingType:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v1

    :cond_14
    iget-object p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIncompatibleCharger:Z

    const-wide/16 v7, -0x1

    :try_start_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v9

    goto :goto_b

    :catch_0
    move-exception p1

    goto :goto_c

    :cond_15
    move-wide v9, v7

    :goto_b
    iput-wide v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :goto_c
    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    iget-object v4, v6, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "KeyguardIndication"

    const-string v10, "Error calling IBatteryStats"

    invoke-virtual {v4, v9, v1, v10, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    :goto_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    invoke-virtual {v6, v0, p1, v4, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->logRefreshBatteryInfo(ZZZI)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    const/16 v0, 0x64

    if-nez v5, :cond_16

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v1, :cond_16

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    :cond_16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-nez v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    :cond_17
    :goto_e
    return-void
.end method

.method public final onRequireUnlockForNfc()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130f7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1004

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method public final onTimeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onTrustGrantedForCurrentUser(ZZLcom/android/keyguard/TrustGrantFlags;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustGrantedIndication:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
