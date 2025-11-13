.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method
