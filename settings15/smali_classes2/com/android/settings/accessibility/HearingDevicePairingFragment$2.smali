.class public final Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

.field public final synthetic val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/HearingDevicePairingFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    const-string v0, "onConnectionStateChange, status: "

    const-string v1, ", newState: "

    const-string v2, ", device: "

    invoke-static {v0, v1, p2, p3, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingDevicePairingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment;->mConnectingGattList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    const-string v0, "onServicesDiscovered, status: "

    const-string v1, ", device: "

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingDevicePairingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "compatible with Android, device: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/HearingDevicePairingFragment;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$2;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment;->mConnectingGattList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
