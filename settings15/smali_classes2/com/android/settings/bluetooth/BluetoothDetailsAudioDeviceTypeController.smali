.class public final Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field mProfilesContainer:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method


# virtual methods
.method public createAudioDeviceTypePreference(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    const-string p1, "bluetooth_audio_device_type"

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v1, 0x7f1406e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v3, 0x7f1406e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v4, 0x7f1406e0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v5, 0x7f1406dd

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v6, 0x7f1406dc

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v7, 0x7f1406de

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const v8, 0x7f1406df

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    iput-object v1, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {p1, v1, v4}, Landroid/media/AudioManager;->getBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;Z)I

    move-result p1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAudioDeviceTypePreference()Landroidx/preference/ListPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_audio_device_type_group"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "bluetooth_audio_device_type_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->refresh()V

    return-void
.end method

.method public final isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v1, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth_audio_device_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v3, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v3, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Landroid/media/AudioManager;->setBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;ZI)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final refresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "bluetooth_audio_device_type"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->createAudioDeviceTypePreference(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAudioDeviceTypeController;->mAudioDeviceTypePreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
