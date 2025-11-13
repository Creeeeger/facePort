.class Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishAnimationLoop()V
    .locals 2

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "onFinishAnimationLoop"

    .line 659
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onFinishListAnimation()V

    return-void
.end method

.method public onItemClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 635
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDevicePreferenceClick :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPickerDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-boolean v2, v2, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceListPreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 638
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    return-void
.end method

.method public putCastDevicePreferenceMap(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putCastDevicePreferenceMap :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getCachedCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getCachedCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDevicePreferenceMap(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putDevicePreferenceMap :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateScanningState()V
    .locals 2

    const-string v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "updateScanningState"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStopScanningState()V

    :cond_0
    return-void
.end method
