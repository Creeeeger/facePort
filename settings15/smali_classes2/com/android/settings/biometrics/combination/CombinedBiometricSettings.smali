.class public Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;
.super Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mActiveUnlockDeviceNameListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;

.field public mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics/combination/CombinedBiometricSearchIndexProvider;

    const v1, 0x7f170245

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFacePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_face_settings"

    return-object p0
.end method

.method public final getFingerprintPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_fingerprint_settings"

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BiometricSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x756

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170245

    return p0
.end method

.method public final getUnlockPhonePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_settings_biometric_keyguard"

    return-object p0
.end method

.method public final getUseAnyBiometricSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockDeviceNameListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;->mActiveUnlockContentListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;

    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const v0, 0x7f140658

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f14065b

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f14065e

    goto :goto_0

    :cond_2
    const v0, 0x7f140661

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-super {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseAnyBiometricSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUseInAppsPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_settings_biometric_app"

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;

    iget v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;->setUserId(I)V

    const-class p1, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;

    iget p0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;->setUserId(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object p1, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings$1;-><init>(Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;)V

    new-instance v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockDeviceNameListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;

    iget-object p1, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;->mActiveUnlockContentListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->subscribe()V

    const-string p1, "biometric_intro"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    iget-object v1, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const v1, 0x7f140652

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const v1, 0x7f140653

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const v1, 0x7f140654

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f140651

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p1, "biometric_ways_to_use"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    iget-object v1, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    const v1, 0x7f140657

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    const v1, 0x7f14065a

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    const v1, 0x7f14065d

    goto :goto_2

    :cond_8
    const v1, 0x7f140660

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getTitleForActiveUnlock()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockDeviceNameListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockDeviceNameListener;->mActiveUnlockContentListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->unsubscribe()V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "biometric_active_unlock_settings"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p2}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x7d3

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z

    move-result p0

    return p0
.end method
