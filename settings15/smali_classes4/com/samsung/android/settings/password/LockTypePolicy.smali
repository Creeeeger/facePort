.class public final Lcom/samsung/android/settings/password/LockTypePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForAppLockBackupKey:Z

.field public final mForFace:Z

.field public final mForFingerprint:Z

.field public final mForPrivateModeBackupKey:Z

.field public final mFromChinaSUW:Z

.field public final mFromSetupwizard:Z

.field public final mIntent:Landroid/content/Intent;

.field public final mIsDOEnabled:Z

.field public final mIsDualDarDoEnabled:Z

.field public final mIsDualDarDoUser:Z

.field public final mIsKnoxId:Z

.field public final mIsManagedProfile:Z

.field public final mIsMultifactorAuthEnforced:Z

.field public final mIsOnelockOngoing:Z

.field public final mIsOrganizationOwned:Z

.field public final mIsOrganizationOwnedDeviceWithManagedProfile:Z

.field public final mIsPasswordAdminEnabled:Z

.field public final mIsSecureFolderId:Z

.field public final mIsSupportBiometricForUCM:Z

.field public final mIsSupportChangePin:Z

.field public final mIsSystemUser:Z

.field public final mIsUCMKeyguardEnabled:Z

.field public final mSetPrevious:Z

.field public mUnificationProfileId:I

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public final prime_number:[I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mUnificationProfileId:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->prime_number:[I

    iput-object p2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mUserId:I

    iput-object p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "recover_password"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mSetPrevious:Z

    const-string v1, "fromSetupWizard"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mFromSetupwizard:Z

    const-string v1, "fromChinaSUW"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mFromChinaSUW:Z

    const-string v1, "for_fingerprint"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    const-string v1, "for_face"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForFace:Z

    const-string v1, "forAppLockBackupKey"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForAppLockBackupKey:Z

    const-string v1, "forPrivateBackupKey"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForPrivateModeBackupKey:Z

    const-string v1, "from_sec_non_biometrics"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForFingerprint:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mForFace:Z

    :cond_1
    const-string v1, "isOneLockOngoing"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsOnelockOngoing:Z

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsUCMKeyguardEnabled:Z

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, v3

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_1
    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSupportChangePin:Z

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v3

    goto :goto_2

    :cond_3
    move p3, v2

    :goto_2
    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSupportBiometricForUCM:Z

    if-nez p1, :cond_4

    move p3, v3

    goto :goto_3

    :cond_4
    move p3, v2

    :goto_3
    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsMultifactorAuthEnforced:Z

    const-string p3, "device_policy"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p3}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDualDarDoEnabled:Z

    if-eqz p3, :cond_5

    invoke-static {p2, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v3

    goto :goto_4

    :cond_5
    move p3, v2

    :goto_4
    iput-boolean p3, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isMdmAdminPresent()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsPasswordAdminEnabled:Z

    :cond_6
    const-string/jumbo p2, "ro.organization_owned"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string/jumbo p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v3

    goto :goto_5

    :cond_7
    move p2, v2

    :goto_5
    iput-boolean p2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsOrganizationOwned:Z

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    iput-boolean v2, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsManagedProfile:Z

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


# virtual methods
.method public final isDevicePasswordAdminEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSystemUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsPasswordAdminEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnterpriseUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

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

.method public final isWorkDeviceOrProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDOEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsOrganizationOwnedDeviceWithManagedProfile:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsDualDarDoUser:Z

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
