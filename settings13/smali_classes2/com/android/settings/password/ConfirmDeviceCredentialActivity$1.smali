.class Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 137
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmGoingToBackground(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmKnoxBiometricsUiHelper(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v1, p1, p2, v3}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V

    const/16 p2, 0xa

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finishing, user no longer valid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$mshowConfirmCredentials(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    goto :goto_1

    .line 148
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmKnoxBiometricsUiHelper(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmGoingToBackground(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptOnAuthenticationFailedIfNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmKnoxBiometricsUiHelper(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmTrustManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 172
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getAuthenticationType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v3

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 180
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSystemEvent(I)V
    .locals 3

    .line 196
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
