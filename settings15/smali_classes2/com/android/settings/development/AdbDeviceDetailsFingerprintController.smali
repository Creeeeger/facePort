.class public final Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_FINGERPRINT_CATEGORY:Ljava/lang/String; = "fingerprint_category"


# instance fields
.field public mFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field public mFingerprintPref:Lcom/android/settingslib/widget/FooterPreference;

.field public mPairedDevice:Landroid/debug/PairDevice;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "fingerprint_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mFingerprintPref:Lcom/android/settingslib/widget/FooterPreference;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14027e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mFingerprintPref:Lcom/android/settingslib/widget/FooterPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mPairedDevice:Landroid/debug/PairDevice;

    iget-object v1, v1, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;->mFingerprintPref:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "fingerprint_category"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
