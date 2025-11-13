.class public final Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mAssociationId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# virtual methods
.method public createPermSyncPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const-string v1, "perm_sync"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f1406e6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f1406e5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "data_sync_group"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "data_sync_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->refresh()V

    return-void
.end method

.method public final isAvailable()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->ongoingPermSync()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mAssociationId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "perm_sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mAssociationId:I

    invoke-virtual {p1, p0}, Landroid/companion/CompanionDeviceManager;->enablePermissionsSync(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mAssociationId:I

    invoke-virtual {p1, p0}, Landroid/companion/CompanionDeviceManager;->disablePermissionsSync(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final refresh()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "perm_sync"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->createPermSyncPreference(Landroid/content/Context;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mAssociationId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v1}, Landroid/companion/CompanionDeviceManager;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v4, v3

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
