.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothPairingDetail.java"


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mInitialScanStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    .line 59
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addPreferencesForActivity()V
    .locals 0

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 240
    sget p0, Lcom/android/settings/R$string;->help_url_bluetooth:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3fa

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 252
    sget p0, Lcom/android/settings/R$xml;->bluetooth_pairing_detail:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    .line 66
    new-instance p1, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 206
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method protected onFinishListAnimation()V
    .locals 0

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateBluetooth()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    .line 112
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    return-void
.end method

.method protected onStopScanningState()V
    .locals 0

    return-void
.end method

.method showBluetoothTurnedOnToast()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->connected_device_bluetooth_turned_on_toast:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method updateBluetooth()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    return-void
.end method
