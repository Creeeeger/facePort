.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "CCModeStatus"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    const p1, 0x7f170163

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public final onResume()V
    .locals 12

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "onResume"

    const-string v1, "CCModeStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, -0x1

    const-string v3, "DevicePolicyManager is null"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    const/high16 v5, 0x10000

    if-eq v0, v5, :cond_6

    const/high16 v5, 0x20000

    if-eq v0, v5, :cond_5

    const/high16 v5, 0x30000

    if-eq v0, v5, :cond_4

    const/high16 v5, 0x40000

    if-eq v0, v5, :cond_3

    const/high16 v5, 0x50000

    if-eq v0, v5, :cond_2

    const/high16 v5, 0x60000

    if-eq v0, v5, :cond_1

    const-string v0, "Unspecified"

    goto :goto_1

    :cond_1
    const-string v0, "Complex"

    goto :goto_1

    :cond_2
    const-string v0, "Alphanumeric"

    goto :goto_1

    :cond_3
    const-string v0, "Alphabetic"

    goto :goto_1

    :cond_4
    const-string v0, "Numeric complex"

    goto :goto_1

    :cond_5
    const-string v0, "Numeric"

    goto :goto_1

    :cond_6
    const-string v0, "Something"

    :goto_1
    const-string/jumbo v5, "password_quality"

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v5, "Enabled"

    const-string v6, "mDevicePolicyManager is null"

    const-string v7, "Disabled"

    const-string/jumbo v8, "smart_lock"

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, v8, v5}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    const-string v9, "face_recognition"

    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v8

    :goto_3
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v10, :cond_b

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v10

    xor-int/2addr v3, v10

    if-nez v0, :cond_a

    if-eqz v3, :cond_d

    :cond_a
    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string v0, "PasswordPolicy is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    invoke-virtual {p0, v9, v5}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    goto :goto_6

    :cond_e
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "maximum_failed_password_for_wipe"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const-string/jumbo v2, "sd_card_status"

    if-nez v0, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    if-nez v3, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v0

    const-string v3, "Blocked"

    if-nez v0, :cond_11

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_physical_media"

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Encrypted"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    const-string v0, "Not encrypted"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    :goto_7
    const-string v0, "Error"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string v2, "CertificatePolicy is null"

    const-string v3, "*"

    if-eqz v0, :cond_16

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    :cond_16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    :goto_9
    const-string/jumbo v4, "revocation"

    if-eqz v0, :cond_17

    const-string v0, "OCSP/CRL"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v8

    goto :goto_a

    :cond_18
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-eqz v8, :cond_19

    const-string v0, "CRL"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_19
    const-string v0, "None"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public final setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "CCModeStatus"

    const-string/jumbo p1, "setSummaryText - preference is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CCModeStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f140c90

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
