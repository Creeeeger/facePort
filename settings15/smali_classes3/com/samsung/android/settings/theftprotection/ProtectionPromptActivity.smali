.class public Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAuthenticationCallback:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;

.field public mCallerPackage:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mIsLockoutStatus:Z

.field public mLoggingEventValue:Ljava/lang/String;

.field public mSecurityDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    new-instance v0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;-><init>(Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mAuthenticationCallback:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;

    return-void
.end method


# virtual methods
.method public final buildBiometricPromptAuthDelay()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "realTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProtectionPromptActivity"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mandatory_biometrics_delay_time"

    const-wide/16 v5, 0x0

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_1

    cmp-long v2, v0, v7

    if-lez v2, :cond_1

    const-string v2, "The security delay time has expired but it hasn\'t been reset. Reset the security delay time."

    invoke-static {v3, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v2, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_GRACE_DURATION_MILLIS:J

    add-long/2addr v7, v2

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.TIME_DELAY_EXPIRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mandatory_biometrics_grace_time"

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_2

    cmp-long v0, v0, v7

    if-lez v0, :cond_2

    const-string v0, "The grace period has expired but it hasn\'t been reset. Reset the grace period."

    invoke-static {v3, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.GRACE_TIME_EXPIRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f141db4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v1, 0x7f141db3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->setPromptLogo(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_account_authentication"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_client_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f141daf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_1

    :cond_3
    const v1, 0x7f1408bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;)V

    new-instance v3, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mAuthenticationCallback:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mLoggingEventValue:Ljava/lang/String;

    const-string v0, "54105"

    const-string v1, "54210"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final finishWithResult(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getLockoutDescriptionRes()I
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object p0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f141db2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f141db1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f141db0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final handleAuthenticationSucceeded()V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mandatory_biometrics"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isInTrustedPlace(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "handleAuthenticationSucceeded: isMandatoryBiometricsOn="

    const-string v6, ", inTrustedPlace="

    const-string v7, ", timeDelay="

    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProtectionPromptActivity"

    invoke-static {v6, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mandatory_biometrics_grace_time"

    const-wide/16 v7, 0x0

    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v7

    sget-object v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->NONE:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    sget-object v5, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->SECURITY_DELAY:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->GRACE_PERIOD:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "mandatory_biometrics_delay_time"

    invoke-static {v0, v9, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "handleAuthenticationSucceeded: GRACE_PERIOD"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_2
    const-string v2, "handleAuthenticationSucceeded: TimeDelayState = NONE || SECURITY_DELAY"

    invoke-static {v6, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->launchTimeDelayScreen(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void

    :cond_6
    :goto_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void
.end method

.method public final launchTimeDelayScreen(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "delay_running"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pp_package_name"

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_action_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_security_delay_title_res"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_security_delay_description_res"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_noti_in_progress_res"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_noti_delay_end_res"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "pp_noti_delay_end_immediately_res"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pp_caller_name"

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mLoggingEventValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pp_security_delay_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: requestCode="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ProtectionPromptActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->handleAuthenticationSucceeded()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, -0x1

    const-string v3, "ProtectionPromptActivity"

    if-nez p1, :cond_0

    const-string p1, "ProtectionPrompt is not enabled."

    invoke-static {v3, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_1

    const-string p1, "Intent is null."

    invoke-static {v3, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void

    :cond_1
    const-string v4, "pp_package_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mCallerPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Caller package name is empty."

    invoke-static {v3, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mCallerPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "pp_caller_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.fmm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "3"

    goto/16 :goto_2

    :cond_3
    const-string p1, "0"

    if-nez v4, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v4, v2

    goto :goto_1

    :sswitch_0
    const-string v5, "DeleteTrustedLocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "ChangeLockscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v5, "AddTrustedLocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "EditTrustedLocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v5, "ChangeBiometric"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move v4, v0

    goto :goto_1

    :sswitch_5
    const-string v5, "RequireBiometricOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "7"

    goto :goto_2

    :pswitch_1
    const-string p1, "1"

    goto :goto_2

    :pswitch_2
    const-string p1, "6"

    goto :goto_2

    :pswitch_3
    const-string p1, "5"

    goto :goto_2

    :pswitch_4
    const-string p1, "2"

    goto :goto_2

    :pswitch_5
    const-string p1, "4"

    :goto_2
    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mLoggingEventValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "pp_security_delay"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, ""

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v4, "com.samsung.intent.action.MB_LOCKOUT_PROMPT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIsLockoutStatus:Z

    goto :goto_4

    :cond_c
    const-string v4, "com.samsung.intent.action.MANDATORY_BIOMETRICS_PROMPT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "biometric"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    if-eqz p1, :cond_e

    const/16 v4, 0xf

    invoke-virtual {p1, v4}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p1

    const/4 v4, 0x7

    if-eq v4, p1, :cond_d

    const/16 v4, 0x9

    if-ne v4, p1, :cond_e

    :cond_d
    iput-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIsLockoutStatus:Z

    :cond_e
    :goto_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mIsLockoutStatus:Z

    if-eqz p1, :cond_10

    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14211b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v0, 0x7f141db3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->getLockoutDescriptionRes()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->getLockoutDescriptionRes()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_f
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->setPromptLogo(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mAuthenticationCallback:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$1;

    invoke-virtual {p1, v1, v2, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isInTrustedPlace(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mandatory_biometrics_grace_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    sget-object v5, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->SECURITY_DELAY:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    if-lez v4, :cond_11

    sget-object v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->GRACE_PERIOD:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "mandatory_biometrics_delay_time"

    invoke-static {v4, v8, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-lez v4, :cond_12

    move-object v4, v5

    goto :goto_5

    :cond_12
    sget-object v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->NONE:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    :goto_5
    const-string v6, "onCreate() : inTrustedPlace="

    const-string v7, ", timeDelay="

    invoke-static {v6, v7, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", timeState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->mSecurityDelay:Z

    if-nez v3, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->buildBiometricPromptAuthDelay()V

    goto :goto_6

    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    goto :goto_6

    :cond_14
    if-ne v4, v5, :cond_15

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->launchTimeDelayScreen(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    goto :goto_6

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->buildBiometricPromptAuthDelay()V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e880484 -> :sswitch_5
        -0x3de78938 -> :sswitch_4
        0x439f2e42 -> :sswitch_3
        0x4851b70b -> :sswitch_2
        0x54091147 -> :sswitch_1
        0x58614881 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setPromptLogo(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, p2, v1}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setLogoBitmap(Landroid/graphics/Bitmap;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setLogoDescription(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
