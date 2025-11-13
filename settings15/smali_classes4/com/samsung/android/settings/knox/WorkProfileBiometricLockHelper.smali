.class public final Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

.field public mContext:Landroid/content/Context;

.field public mEffectiveUserId:I

.field public mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mIsInternal:Z

.field public mIsKeyguardLocked:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# virtual methods
.method public final addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsKeyguardLocked:Z

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final interceptIsBiometricAllowedIfNeeded()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "interceptOnAuthenticationErrorIfNeeded errorCode = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KKG::WorkProfileBiometricLockHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iget p3, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    if-eq p3, p2, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p2

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    if-eqz p2, :cond_0

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return p3

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    if-ne p1, p0, :cond_1

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final interceptOnAuthenticationFailedIfNeeded(Z)V
    .locals 2

    const-string v0, "KKG::WorkProfileBiometricLockHelper"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
    .locals 3

    const-string v0, "KKG::WorkProfileBiometricLockHelper"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    if-eq v2, v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getAuthenticationType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulBiometricUnlock(ZI)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final interceptShowConfirmCredentialsIfNeeded()Z
    .locals 11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    if-eq v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    const v3, 0x50804000

    const-class v4, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;

    const-string v5, "mUserId"

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast v2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return v6

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast v2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return v6

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast v2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return v6

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v6

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isBiometricAllowed(II)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "fragment"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/BiometricFragment;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    return v4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "enable_one_lock_ongoing"

    invoke-static {p2, v0, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-lez p2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/BiometricFragment;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    :goto_0
    return v4
.end method

.method public final onStart(Landroid/app/Activity;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const p0, 0x7f0d0866

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setContentView(I)V

    const p0, 0x7f0a016f

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "#990e0e0e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    const p0, 0x7f0a06fe

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p2, "#fafafa"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f141469

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p2, 0x40

    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const p2, 0x3e19999a    # 0.15f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x300

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0d0865

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0170

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result p2

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0809df

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0809e0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final setResultIfNeeded()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "fragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/BiometricFragment;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    :cond_1
    return-void
.end method
