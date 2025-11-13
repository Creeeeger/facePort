.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CCModeStatus.java"


# instance fields
.field private mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "CCModeStatus"

    const-string v0, "mDevicePolicyManager is null"

    .line 219
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private getPasswordQuality()I
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "CCModeStatus"

    const-string v0, "DevicePolicyManager is null"

    .line 156
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private isFaceLockDisabled()Z
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "CCModeStatus"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 204
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    .line 205
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result p0

    xor-int/2addr p0, v3

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :cond_3
    const-string p0, "PasswordPolicy is null"

    .line 208
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string p0, "DevicePolicyManager is null"

    .line 199
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isOcspCheckEnabled()Z
    .locals 1

    .line 238
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz p0, :cond_0

    const-string v0, "*"

    .line 239
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "CCModeStatus"

    const-string v0, "CertificatePolicy is null"

    .line 241
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isRevocationCheckEnabled()Z
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz p0, :cond_0

    const-string v0, "*"

    .line 230
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "CCModeStatus"

    const-string v0, "CertificatePolicy is null"

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isSmartLockDisabled()Z
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string p0, "CCModeStatus"

    const-string v1, "mDevicePolicyManager is null"

    .line 184
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSupportFaceRecognition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isSupportSDCard()Z
    .locals 0

    .line 225
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method private passwordQualityToString(I)Ljava/lang/String;
    .locals 0

    const/high16 p0, 0x10000

    if-eq p1, p0, :cond_5

    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_4

    const/high16 p0, 0x30000

    if-eq p1, p0, :cond_3

    const/high16 p0, 0x40000

    if-eq p1, p0, :cond_2

    const/high16 p0, 0x50000

    if-eq p1, p0, :cond_1

    const/high16 p0, 0x60000

    if-eq p1, p0, :cond_0

    const-string p0, "Unspecified"

    return-object p0

    :cond_0
    const-string p0, "Complex"

    return-object p0

    :cond_1
    const-string p0, "Alphanumeric"

    return-object p0

    :cond_2
    const-string p0, "Alphabetic"

    return-object p0

    :cond_3
    const-string p0, "Numeric complex"

    return-object p0

    :cond_4
    const-string p0, "Numeric"

    return-object p0

    :cond_5
    const-string p0, "Something"

    return-object p0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "CCModeStatus"

    const-string p1, "setSummaryText - preference is null"

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFaceRecognition()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isSupportFaceRecognition()Z

    move-result v0

    const-string v1, "face_recognition"

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isFaceLockDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Disabled"

    .line 110
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Enabled"

    .line 112
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateMaximumPassword()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->getMaximumFailedPasswordsForWipe()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maximum_failed_password_for_wipe"

    .line 119
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->getPasswordQuality()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->passwordQualityToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password_quality"

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateRevocation()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isOcspCheckEnabled()Z

    move-result v0

    const-string v1, "revocation"

    if-eqz v0, :cond_0

    const-string v0, "OCSP/CRL"

    .line 142
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isRevocationCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CRL"

    .line 144
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "None"

    .line 146
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSDCard()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isSupportSDCard()Z

    move-result v0

    const-string v1, "sd_card_status"

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    if-nez v2, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v0

    const-string v2, "Blocked"

    if-nez v0, :cond_2

    .line 129
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_physical_media"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Encrypted"

    .line 133
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "Not encrypted"

    .line 135
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "Error"

    .line 127
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateSmartLock()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->isSmartLockDisabled()Z

    move-result v0

    const-string v1, "smart_lock"

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    .line 99
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Enabled"

    .line 101
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "CCModeStatus"

    const-string v0, "onCreate"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    .line 50
    sget p1, Lcom/android/settings/R$xml;->sec_cc_mode_status:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 52
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "CCModeStatus"

    const-string v1, "onResume"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updatePasswordQuality()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updateSmartLock()V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updateFaceRecognition()V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updateMaximumPassword()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updateSDCard()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->updateRevocation()V

    return-void
.end method
