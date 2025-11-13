.class Lcom/android/settings/password/LockTypePolicy;
.super Ljava/lang/Object;
.source "LockTypePolicy.java"


# instance fields
.field private isUCMKeyguardEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mForAppLockBackupKey:Z

.field private mForFace:Z

.field private mForFingerprint:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromChinaSUW:Z

.field private mFromSecNonBiometrics:Z

.field private mFromSetupwizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsDOEnabled:Z

.field private mIsDualDarDoEnabled:Z

.field private mIsDualDarDoUser:Z

.field private mIsKnoxId:Z

.field private mIsManagedProfile:Z

.field private mIsMultifactorAuthEnforced:Z

.field private mIsOnelockOngoing:Z

.field private mIsOrganizationOwnedDeviceWithManagedProfile:Z

.field private mIsPasswordAdminEnabled:Z

.field private mIsSecureFolderId:Z

.field private mIsSystemUser:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUnificationProfileId:I

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private prime_number:[I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 50
    iput v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUnificationProfileId:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 70
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    .line 73
    iput-object p1, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    .line 75
    iput-object p3, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    .line 76
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/LockTypePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 77
    iget-object p1, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/password/LockTypePolicy;->setValueFromIntent()V

    .line 79
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/LockTypePolicy;->isUCMKeyguardEnabled:Z

    .line 80
    invoke-direct {p0}, Lcom/android/settings/password/LockTypePolicy;->setKnoxValue()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/password/LockTypePolicy;->setManagedProfileValue()V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method

.method private setKnoxValue()V
    .locals 4

    .line 86
    iget v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    .line 87
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    .line 88
    iget v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    .line 89
    iget v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 92
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    .line 96
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoEnabled:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    .line 101
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isMdmAdminPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsPasswordAdminEnabled:Z

    :cond_2
    return-void
.end method

.method private setManagedProfileValue()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsManagedProfile:Z

    return-void
.end method

.method private setValueFromIntent()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mFromSetupwizard:Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "fromChinaSUW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mFromChinaSUW:Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "forAppLockBackupKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    .line 122
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "forPrivateBackupKey"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForPrivateModeBackupKey:Z

    .line 124
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "from_sec_non_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mFromSecNonBiometrics:Z

    if-eqz v0, :cond_1

    .line 127
    iput-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string v1, "isOneLockOngoing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOnelockOngoing:Z

    return-void
.end method


# virtual methods
.method public getOwnerUserId()I
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    :goto_0
    return p0
.end method

.method public isDevicePasswordAdminEnabled()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsPasswordAdminEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualDarDoUser()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    return p0
.end method

.method public isEnterpriseUser()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKnoxId()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    return p0
.end method

.method public isOnlyDevicePasswordAdminEnabled()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsPasswordAdminEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 8

    .line 401
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoSecured(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 405
    :goto_0
    sget-object v2, Lcom/android/settings/password/LockTypePolicy$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 462
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v0, :cond_13

    .line 464
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v1

    goto/16 :goto_7

    .line 506
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->isUCMKeyguardEnabled:Z

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v1

    mul-int/2addr v0, v5

    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v5

    move v2, v0

    .line 511
    :goto_1
    iget-object v6, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v5

    mul-int/2addr v0, v2

    move v2, v1

    .line 516
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v5, :cond_3

    .line 518
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v4

    mul-int/2addr v0, v2

    move v5, v0

    move v2, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 521
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOnelockOngoing:Z

    if-eqz v0, :cond_4

    .line 523
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    :goto_3
    mul-int/2addr v5, p0

    goto/16 :goto_b

    :cond_4
    move v1, v2

    goto/16 :goto_b

    .line 527
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    .line 529
    invoke-static {v0, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto/16 :goto_b

    .line 471
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mFromChinaSUW:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForPrivateModeBackupKey:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v5

    move v2, v0

    goto :goto_5

    .line 473
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v1

    mul-int/2addr v0, v5

    move v2, v1

    .line 477
    :goto_5
    iget-boolean v6, p0, Lcom/android/settings/password/LockTypePolicy;->isUCMKeyguardEnabled:Z

    if-eqz v6, :cond_7

    .line 479
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v5

    mul-int/2addr v0, v2

    move v2, v1

    .line 482
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v5, :cond_8

    .line 484
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v4

    mul-int/2addr v0, v2

    move v2, v1

    .line 487
    :cond_8
    iget-object v4, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->isUCMKeyguardEnabled:Z

    if-eqz v4, :cond_a

    .line 489
    :cond_9
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v3

    mul-int/2addr v0, v2

    move v2, v1

    :cond_a
    const/4 v3, 0x4

    .line 492
    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOnelockOngoing:Z

    if-eqz v4, :cond_b

    .line 494
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v3

    mul-int/2addr v0, v2

    move v5, v0

    move v2, v1

    goto :goto_6

    :cond_b
    move v5, v0

    :goto_6
    const/4 v0, 0x5

    .line 497
    iget-object v3, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v0

    goto :goto_3

    .line 455
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v0, :cond_13

    .line 457
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v1

    :goto_7
    mul-int/2addr v5, p0

    goto/16 :goto_b

    .line 431
    :pswitch_6
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/settings/R$bool;->config_hide_swipe_security_option:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 433
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v1

    mul-int/2addr v2, v5

    move v6, v1

    goto :goto_8

    :cond_c
    move v2, v5

    move v6, v2

    .line 436
    :goto_8
    iget-boolean v7, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v7, :cond_d

    .line 437
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 439
    iget-object v6, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v5, v6, v5

    mul-int/2addr v2, v5

    move v6, v1

    .line 442
    :cond_d
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v5, :cond_e

    .line 444
    iget-object v5, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v4, v5, v4

    mul-int/2addr v2, v4

    move v6, v1

    :cond_e
    move v5, v2

    if-eqz v0, :cond_12

    .line 448
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-nez v0, :cond_12

    .line 450
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    goto/16 :goto_3

    .line 407
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/settings/R$bool;->config_hide_none_security_option:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 409
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v1

    mul-int/2addr v2, v5

    move v6, v1

    goto :goto_9

    :cond_f
    move v2, v5

    move v6, v2

    .line 412
    :goto_9
    iget-boolean v7, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v7, :cond_10

    .line 413
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 415
    iget-object v6, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v5, v6, v5

    mul-int/2addr v2, v5

    move v6, v1

    .line 418
    :cond_10
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v5, :cond_11

    .line 420
    iget-object v5, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v4, v5, v4

    mul-int/2addr v2, v4

    move v6, v1

    :cond_11
    move v5, v2

    if-eqz v0, :cond_12

    .line 424
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-nez v0, :cond_12

    .line 426
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    goto/16 :goto_3

    :cond_12
    move v1, v6

    goto :goto_b

    :cond_13
    :goto_a
    move v1, v5

    .line 536
    :cond_14
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isScreenLockEnabled() for type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " because :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockTypePolicy"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 9

    .line 182
    sget-object v0, Lcom/android/settings/password/LockTypePolicy$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, -0x2710

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_19

    .line 388
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v6

    :goto_0
    mul-int/2addr v5, p0

    :goto_1
    move v0, v5

    :goto_2
    move v5, v6

    goto/16 :goto_1a

    .line 371
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    goto :goto_3

    :cond_0
    move v0, v5

    move v1, v0

    .line 376
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v2, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v5

    mul-int/2addr v0, v1

    move v5, v0

    move v1, v6

    goto :goto_4

    :cond_1
    move v5, v0

    .line 381
    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_29

    .line 383
    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v4

    :goto_5
    mul-int/2addr v5, p0

    goto :goto_1

    .line 350
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    :cond_3
    move v0, v5

    move v1, v0

    goto :goto_7

    .line 352
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    .line 356
    :goto_7
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mFromSetupwizard:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_8

    .line 357
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_6

    .line 360
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-eqz v3, :cond_5

    .line 362
    :cond_7
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v5

    :goto_8
    mul-int/2addr v0, p0

    goto :goto_2

    :cond_8
    :goto_9
    move v5, v1

    goto/16 :goto_1a

    .line 322
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    move v0, v5

    move v7, v0

    goto :goto_b

    .line 324
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v7, v6

    .line 327
    :goto_b
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 329
    :cond_b
    iget-object v7, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v5, v7, v5

    mul-int/2addr v0, v5

    move v7, v6

    .line 332
    :cond_c
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v5, :cond_d

    .line 334
    iget-object v5, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v4, v5, v4

    mul-int/2addr v0, v4

    move v7, v6

    .line 338
    :cond_d
    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz v4, :cond_e

    .line 340
    iget-object v4, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v3, v4, v3

    mul-int/2addr v0, v3

    move v5, v0

    move v7, v6

    goto :goto_c

    :cond_e
    move v5, v0

    .line 344
    :goto_c
    iget v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUnificationProfileId:I

    if-eq v0, v1, :cond_f

    .line 346
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v2

    goto/16 :goto_5

    :cond_f
    move v0, v5

    move v5, v7

    goto/16 :goto_1a

    .line 303
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    if-nez v0, :cond_10

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    goto :goto_d

    :cond_10
    move v0, v5

    move v1, v0

    .line 310
    :goto_d
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v2, :cond_12

    :cond_11
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    if-eqz v2, :cond_13

    .line 314
    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 316
    :cond_13
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v5

    mul-int v5, v0, p0

    goto/16 :goto_1

    .line 277
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v5

    goto :goto_e

    :cond_14
    move v0, v6

    .line 279
    :goto_e
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mFromChinaSUW:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_15

    goto :goto_f

    :cond_15
    move v2, v0

    move v0, v5

    goto :goto_10

    .line 281
    :cond_16
    :goto_f
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v2, v6

    .line 284
    :goto_10
    iget-object v7, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget v7, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_17

    .line 286
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v5

    mul-int/2addr v0, v2

    move v2, v6

    .line 290
    :cond_17
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz v5, :cond_18

    .line 292
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v2, v2, v4

    mul-int/2addr v0, v2

    move v5, v0

    move v2, v6

    goto :goto_11

    :cond_18
    move v5, v0

    .line 296
    :goto_11
    iget v0, p0, Lcom/android/settings/password/LockTypePolicy;->mUnificationProfileId:I

    if-eq v0, v1, :cond_19

    .line 298
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    goto/16 :goto_5

    :cond_19
    move v0, v5

    move v5, v2

    goto/16 :goto_1a

    .line 244
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v5

    goto :goto_12

    :cond_1a
    move v0, v6

    .line 246
    :goto_12
    iget-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mFromChinaSUW:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mForFace:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/password/LockTypePolicy;->mForPrivateModeBackupKey:Z

    if-eqz v1, :cond_1b

    goto :goto_13

    :cond_1b
    move v1, v0

    move v0, v5

    goto :goto_14

    .line 248
    :cond_1c
    :goto_13
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    .line 251
    :goto_14
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 253
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v5

    mul-int/2addr v0, v1

    move v1, v6

    .line 256
    :cond_1d
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mFromSetupwizard:Z

    if-nez v2, :cond_1e

    .line 258
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v4

    mul-int/2addr v0, v1

    move v1, v6

    :cond_1e
    if-eqz v2, :cond_8

    .line 262
    iget-object v2, p0, Lcom/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_8

    .line 263
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 265
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_20

    .line 266
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-eqz v4, :cond_1f

    .line 268
    :cond_21
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    goto/16 :goto_8

    .line 237
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz v0, :cond_2a

    .line 239
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v6

    goto/16 :goto_0

    .line 207
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_hide_swipe_security_option:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 209
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    goto :goto_15

    :cond_22
    move v0, v5

    move v1, v0

    .line 212
    :goto_15
    iget v7, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_23

    iget-object v7, p0, Lcom/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    .line 213
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 215
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v5

    mul-int/2addr v0, v1

    move v1, v6

    .line 218
    :cond_23
    iget-boolean v5, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v5, :cond_24

    .line 220
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v4

    mul-int/2addr v0, v1

    move v1, v6

    .line 223
    :cond_24
    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v4, :cond_25

    iget-boolean v4, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v4, :cond_25

    .line 225
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v3

    mul-int/2addr v0, v1

    move v5, v0

    move v1, v6

    goto :goto_16

    :cond_25
    move v5, v0

    .line 229
    :goto_16
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz v0, :cond_29

    .line 231
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v2

    goto/16 :goto_5

    .line 184
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_hide_none_security_option:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 186
    iget-object v0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v0, v0, v6

    mul-int/2addr v0, v5

    move v1, v6

    goto :goto_17

    :cond_26
    move v0, v5

    move v1, v0

    .line 189
    :goto_17
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v2, :cond_27

    .line 191
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v5

    mul-int/2addr v0, v1

    move v1, v6

    .line 194
    :cond_27
    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v2, :cond_28

    iget v2, p0, Lcom/android/settings/password/LockTypePolicy;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 196
    iget-object v1, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget v1, v1, v4

    mul-int/2addr v0, v1

    move v5, v0

    move v1, v6

    goto :goto_18

    :cond_28
    move v5, v0

    .line 200
    :goto_18
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz v0, :cond_29

    .line 202
    iget-object p0, p0, Lcom/android/settings/password/LockTypePolicy;->prime_number:[I

    aget p0, p0, v3

    goto/16 :goto_5

    :cond_29
    move v0, v5

    goto/16 :goto_9

    :cond_2a
    :goto_19
    move v0, v5

    .line 391
    :goto_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isScreenLockVisible() for type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " because :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockTypePolicy"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSecureFolderUser()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    return p0
.end method

.method public isWorkDeviceOrProfile()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    if-eqz p0, :cond_0

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

.method public setUnificationProfileId(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/android/settings/password/LockTypePolicy;->mUnificationProfileId:I

    return-void
.end method
