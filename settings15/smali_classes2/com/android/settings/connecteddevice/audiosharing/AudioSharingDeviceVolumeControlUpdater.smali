.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    return-void
.end method


# virtual methods
.method public final addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iput-object v1, v2, Lcom/android/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const-string v1, "audio_sharing_volume_control"

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0803a0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    invoke-interface {p0, v2}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioSharingDeviceVolumeControlUpdater"

    return-object p0
.end method

.method public final isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isDeviceInCachedDevicesList(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasConnectedBroadcastSource(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFilterMatched() device : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isFilterMatched : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioSharingDeviceVolumeControlUpdater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Map : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSharingDeviceVolumeControlUpdater"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
