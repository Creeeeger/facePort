.class public final Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field public mPreference:Landroidx/preference/Preference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "nfc_payment_app"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController$PaymentDefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    iput-object v0, v1, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController$PaymentDefaultAppInfo;->mInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    :cond_1
    return-object v1
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "nfc_payment_app"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppInfos:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_0
    return-void
.end method

.method public final onPaymentAppsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    :cond_0
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method
