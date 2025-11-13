.class public final Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mProfilesContainer:Landroidx/preference/PreferenceCategory;


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "device_companion_apps"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "device_companion_apps"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const p0, 0x7f0d0515

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public final refresh()V
    .locals 0

    return-void
.end method
