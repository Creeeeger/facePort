.class public Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;
.source "SecureFolderBiometricLockHelper.java"


# instance fields
.field private fingerPlusId:I

.field private isFingerPlusEnabled:Z

.field private mActivity:Landroid/app/Activity;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFailedBiometricUnlockAttemptsForSecureFolder:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsInternal:Z

.field private mIsKeyguardLocked:Z

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->fingerPlusId:I

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->isFingerPlusEnabled:Z

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 104
    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    .line 105
    iput-object p4, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivity:Landroid/app/Activity;

    .line 106
    iput-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    .line 108
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "SECURE_FOLDER_KEYGUARD_STATUS"

    const-string p3, "pref_failed_biometric_unlock_attempts_for_secure_folder"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->loadPreferenceAsInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsKeyguardLocked:Z

    .line 115
    iput-boolean p5, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init. mUserId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mFailedBiometricUnlockAttemptsForSecureFolder : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsInternal : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderBiometricLockHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private failedBiometricAttemptForSecureFolder()V
    .locals 3

    .line 412
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    .line 413
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    const-string v1, "SECURE_FOLDER_KEYGUARD_STATUS"

    const-string v2, "pref_failed_biometric_unlock_attempts_for_secure_folder"

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getBiometricDeadlineForSecureFolder()J
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    .line 440
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

.method private setStrongAuthBiometricLockout()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    const/16 v1, 0x100

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    return-void
.end method

.method private shouldAllowBiometricDuringTimeout()Z
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->getBiometricDeadlineForSecureFolder()J

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

.method private showBiometricPrompt()V
    .locals 0

    return-void
.end method

.method private showLockedView(Z)V
    .locals 3

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.knox.SecureFolderLockedView"

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fromResetBtn"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 170
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 172
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception24 : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderBiometricLockHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private vibrateForFingerprintError(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 128
    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsKeyguardLocked:Z

    const-string p1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public interceptIsBiometricAllowedIfNeeded()Z
    .locals 2

    .line 354
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

.method public interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
    .locals 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptOnAuthenticationErrorIfNeeded errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz p2, :cond_2

    .line 137
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return v1

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIOMETRIC_ERROR_CANCELED "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {p2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_1

    const-string p1, "BIOMETRIC_ERROR_CANCELED ( show Locked View. )"

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->showLockedView(Z)V

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    return v1

    .line 153
    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->showConfirmCredentialsIfNeeded(Landroid/app/Activity;)V

    :cond_2
    return v2
.end method

.method public interceptOnAuthenticationFailedIfNeeded(Z)Z
    .locals 2

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    const-string v1, "onAuthenticationFailed"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
    .locals 8

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    const-string v1, "onAuthenticationSucceeded"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v1, :cond_5

    .line 193
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getBiometricId()I

    move-result p1

    .line 196
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->isFingerPlusEnabled:Z

    const/16 v2, 0x3e8

    const/16 v4, 0x64

    if-eqz v1, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_0

    .line 201
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->fingerPlusId:I

    const-string v5, "pref_failed_biometric_unlock_attempts_for_secure_folder"

    const-string v6, "SECURE_FOLDER_KEYGUARD_STATUS"

    if-eq v1, p1, :cond_3

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinished() : Identify authentication Failed with FingerprintPlus Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->vibrateForFingerprintError(Landroid/content/Context;)V

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->failedBiometricAttemptForSecureFolder()V

    .line 207
    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    const-string p1, "mFailedBiometricUnlockAttemptsForSecureFolder ( too many failed. )"

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->setStrongAuthBiometricLockout()V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v6, v5, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->showConfirmCredentialsForWorkProfile()V

    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 218
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->showConfirmCredentialsForWorkProfile()V

    return v2

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->showBiometricPrompt()V

    return v2

    .line 229
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFinished() : Identify authentication Success with FingerprintPlus Index : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v6, v5, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    const-string v0, "dedicated finger"

    invoke-static {v4, v2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    .line 246
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    const-string v0, "fingerprint"

    invoke-static {v4, v2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 248
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return v3
.end method

.method public interceptShowConfirmCredentialsIfNeeded()Z
    .locals 2

    .line 369
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_0

    .line 371
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

.method public isBiometricAllowed(II)Z
    .locals 1

    .line 359
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->isStrongAuthRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 360
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    .line 362
    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->shouldAllowBiometricDuringTimeout()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 364
    invoke-static {p2, p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->shouldAllowBiometricForMaxFailAttempts(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 4

    .line 256
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_4

    .line 257
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "#990e0e0e"

    const/16 v1, 0x78

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    .line 258
    sget p0, Lcom/android/settings/R$layout;->sec_confirm_device_credential_base_secure_folder_desktopmode:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setContentView(I)V

    .line 266
    sget p0, Lcom/android/settings/R$id;->backgroundBlur:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 268
    new-instance p2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {p2, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 269
    invoke-virtual {p2, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    .line 270
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 275
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 279
    sget p0, Lcom/android/settings/R$id;->guide_text_for_desktopmode:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p2, "#fafafa"

    .line 280
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    sget p2, Lcom/android/settings/R$string;->knox_keyguard_user_phone_to_unlock:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 285
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 286
    sget p0, Lcom/android/settings/R$layout;->sec_confirm_device_credential_base_secure_folder:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setContentView(I)V

    .line 288
    sget p0, Lcom/android/settings/R$id;->backgroundBlur:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 290
    new-instance p2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {p2, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 291
    invoke-virtual {p2, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    .line 292
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 295
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 301
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 302
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 303
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p2, 0x300

    invoke-virtual {p0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 306
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 310
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p2, 0x40

    .line 311
    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 p2, -0x2

    .line 312
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p2, 0x3e19999a    # 0.15f

    .line 313
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 314
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 315
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method public setResultIfNeeded(Landroid/app/Activity;)V
    .locals 3

    .line 335
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KKG::SecureFolderBiometricLockHelper"

    const-string v1, "set result"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 339
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 340
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    if-eqz p1, :cond_0

    .line 341
    invoke-interface {p1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->finishForWorkProfile()V

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "fragment"

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/BiometricFragment;

    if-eqz p0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->cancel()V

    :cond_1
    return-void
.end method

.method public showConfirmCredentialsIfNeeded(Landroid/app/Activity;)V
    .locals 2

    .line 324
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KKG::SecureFolderBiometricLockHelper"

    const-string v0, "show ConfirmCredential"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;->showConfirmCredentialsForWorkProfile()V

    :cond_0
    return-void
.end method
