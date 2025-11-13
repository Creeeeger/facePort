.class public final Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/BluetoothServiceConnectionListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field public mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mChanged:Z


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_disable_a2dp_hw_offload"

    return-object p0
.end method

.method public final onBluetoothCodecUpdated()V
    .locals 0

    return-void
.end method

.method public final onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string v1, "onBluetoothServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public final onBluetoothServiceDisconnected()V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string v1, "onBluetoothServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public final onDeveloperOptionsSwitchEnabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    const/4 p2, 0x0

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->setA2dpOffloadMode()V

    :cond_0
    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const-string p1, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
