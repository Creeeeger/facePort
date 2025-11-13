.class public final Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mFailedBiometricUnlockAttemptsForSecureFolder:I

.field public mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mIsInternal:Z

.field public mIsKeyguardLocked:Z

.field public mKnoxEventList:Ljava/util/ArrayList;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# virtual methods
.method public final addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsKeyguardLocked:Z

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final interceptIsBiometricAllowedIfNeeded()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interceptOnAuthenticationErrorIfNeeded errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    if-eq v2, p2, :cond_4

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    if-ne p1, v3, :cond_0

    check-cast v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return v4

    :cond_0
    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    const-string v3, "BIOMETRIC_ERROR_CANCELED "

    invoke-static {p1, v3, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xf

    if-lt p1, v3, :cond_3

    const-string p1, "BIOMETRIC_ERROR_CANCELED ( show Locked View. )"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string p3, "com.samsung.android.settings.knox.SecureFolderLockedView"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "fromResetBtn"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "userId"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception24 : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    check-cast v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return v4

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eq v2, p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "show ConfirmCredential"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :cond_4
    return v1
.end method

.method public final interceptOnAuthenticationFailedIfNeeded(Z)V
    .locals 2

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
    .locals 4

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getBiometricId()I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    const-string v2, "fingerprint"

    const/16 v3, 0x64

    invoke-static {v3, v0, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final interceptShowConfirmCredentialsIfNeeded()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBiometricAllowed(II)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "fragment"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/BiometricFragment;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_3

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    const/16 p1, 0xf

    if-ge p0, p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final onStart(Landroid/app/Activity;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0d0864

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    const p2, 0x7f0a06fe

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f141469

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x300

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p2, 0x7f0d0865

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0170

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result p2

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0809df

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0809e0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final setResultIfNeeded()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

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
