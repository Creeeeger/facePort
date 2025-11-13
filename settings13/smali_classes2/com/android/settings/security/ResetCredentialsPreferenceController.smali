.class public Lcom/android/settings/security/ResetCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "ResetCredentialsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mKeyStore:Ljava/security/KeyStore;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private final mWifiKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    const-string v0, "AndroidKeyStore"

    const-string/jumbo v1, "no_config_credentials"

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 66
    :goto_0
    iput-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Ljava/security/KeyStore;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    :try_start_1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 71
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v2, 0x66

    invoke-direct {v0, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    .line 76
    :catch_1
    :cond_0
    iput-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mWifiKeyStore:Ljava/security/KeyStore;

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "credentials_reset"

    return-object p0
.end method

.method public onResume()V
    .locals 7

    const-string v0, "ResetCredentials"

    .line 95
    iget-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Ljava/security/KeyStore;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mWifiKeyStore:Ljava/security/KeyStore;

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 102
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preference enabled system="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", wifi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :catch_0
    :cond_2
    move v3, v1

    .line 115
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v4, "isUserRemoveCertificatesAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "false"

    .line 119
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserChangeProfilesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    :cond_4
    const-string/jumbo v2, "onResume() UserChange(or Remove) has disallowed by IT admin."

    .line 123
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_5
    return-void
.end method
