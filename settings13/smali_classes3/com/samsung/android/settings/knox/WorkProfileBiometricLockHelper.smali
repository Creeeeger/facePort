.class public Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;
.source "WorkProfileBiometricLockHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEffectiveUserId:I

.field private mFailedBiometricUnlockAttemptsForWorkProfile:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsInternal:Z

.field private mIsKeyguardLocked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFailedBiometricUnlockAttemptsForWorkProfile:I

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 91
    iput p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    .line 92
    iput-object p4, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mActivity:Landroid/app/Activity;

    .line 93
    iput-boolean p5, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    .line 94
    iput-object p3, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    .line 96
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "KNOX_KEYGUARD_STATUS"

    const-string p3, "pref_failed_biometric_unlock_attempts"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->loadPreferenceAsInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFailedBiometricUnlockAttemptsForWorkProfile:I

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsKeyguardLocked:Z

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mEffectiveUserId:I

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init. mUserId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mFailedBiometricUnlockAttemptsForWorkProfile : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFailedBiometricUnlockAttemptsForWorkProfile:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Two-factor enabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p4, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    .line 107
    invoke-virtual {p3, p4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move v0, p3

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsInternal : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mEffectiveUserId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mEffectiveUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::WorkProfileBiometricLockHelper"

    .line 106
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBiometricDeadlineForWorkProfile()J
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getBiometricLockTimerDialogIntent(I)Landroid/content/Intent;
    .locals 2

    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "mUserId"

    .line 366
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private getConfirmLockedUnavailableActivity(I)Landroid/content/Intent;
    .locals 2

    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "mUserId"

    .line 373
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p0, 0x50804000

    .line 374
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private isAACTextVisible()Z
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getValidActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    sget-object v2, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 400
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    .line 385
    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldAllowBiometricDuringTimeout()Z
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->getBiometricDeadlineForWorkProfile()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 114
    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsKeyguardLocked:Z

    const-string p1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public interceptIsBiometricAllowedIfNeeded()Z
    .locals 2

    .line 239
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

.method public interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
    .locals 1

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interceptOnAuthenticationErrorIfNeeded errorCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KKG::WorkProfileBiometricLockHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-eq p2, p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return p3

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_1

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnAuthenticationFailedIfNeeded(Z)Z
    .locals 2

    const-string v0, "KKG::WorkProfileBiometricLockHelper"

    const-string v1, "onAuthenticationFailed"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
    .locals 3

    const-string v0, "KKG::WorkProfileBiometricLockHelper"

    const-string v1, "onAuthenticationSucceeded"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getAuthenticationType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulBiometricUnlock(ZI)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->isAACTextVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "CMFA_LOCKED_BY_FACTOR"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->showConfirmCredentialsForWorkProfile()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public interceptShowConfirmCredentialsIfNeeded()Z
    .locals 6

    .line 263
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->getBiometricDeadlineForWorkProfile()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->getBiometricLockTimerDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 267
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->getConfirmLockedUnavailableActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return v1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->getConfirmLockedUnavailableActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 290
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return v1

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricAllowed(II)Z
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 246
    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->shouldAllowBiometricDuringTimeout()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 250
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->isStrongAuthRequired(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 251
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 252
    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 254
    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isOneLockOngoing(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 256
    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 257
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->shouldAllowBiometricDuringTimeout()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 3

    .line 175
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    sget p0, Lcom/android/settings/R$layout;->sec_confirm_device_credential_base_work_profile_desktopmode:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setContentView(I)V

    .line 179
    sget p0, Lcom/android/settings/R$id;->backgroundDim:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "#990e0e0e"

    .line 182
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 185
    :cond_0
    sget p0, Lcom/android/settings/R$id;->guide_text_for_desktopmode:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p2, "#fafafa"

    .line 186
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sget p2, Lcom/android/settings/R$string;->knox_keyguard_user_phone_to_unlock:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p2, 0x40

    .line 190
    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const p2, 0x3e19999a    # 0.15f

    .line 191
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x300

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 204
    sget v0, Lcom/android/settings/R$layout;->sec_confirm_device_credential_base_work_profile:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 205
    sget v0, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->sec_knox_credential_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->sec_knox_credential_bg_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->isAACTextVisible()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 217
    sget p2, Lcom/android/settings/R$id;->aacText:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 219
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_pattern_advanced_access_control:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "CMFA_LOCKED_BY_FACTOR"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "CMFA_TOUCH_DYNAMICS"

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->cmfa_factor_touchdynamics_workprofile_locked_notice:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 226
    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method public setResultIfNeeded(Landroid/app/Activity;)V
    .locals 1

    .line 316
    iget p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    if-eqz p1, :cond_0

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "fragment"

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/BiometricFragment;

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->cancel()V

    :cond_0
    return-void
.end method
