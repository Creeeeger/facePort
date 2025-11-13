.class public final Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    sget v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmDeviceCredentialActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    const/4 v3, 0x0

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, v0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iput-boolean v3, p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget p2, p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Finishing, user no longer valid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget p2, p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget v0, p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricsAuthenticators:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_2

    :cond_4
    const-string p2, "Finishing, device credential not requested"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x9

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    :cond_5
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_7
    iget-boolean p0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-eqz p0, :cond_8

    iput-boolean v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationFailedIfNeeded(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iput-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    iget v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getAuthenticationType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move v1, v0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget-object v0, p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p1, p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSystemEvent(I)V
    .locals 2

    sget v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->$r8$clinit:I

    const-string v0, "SystemEvent: "

    const-string v1, "ConfirmDeviceCredentialActivity"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
