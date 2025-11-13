.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 p0, 0x16

    invoke-virtual {p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p0

    sub-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    iget v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-ne v3, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sub-int v0, p0, v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimestamp:Ljava/sql/Timestamp;

    if-eqz p0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimestamp:Ljava/sql/Timestamp;

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    sub-int/2addr v0, v1

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, p0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result p0

    :goto_3
    move v0, p0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :goto_4
    return v0
.end method
