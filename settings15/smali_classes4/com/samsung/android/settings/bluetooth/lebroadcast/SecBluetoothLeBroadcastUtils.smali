.class public abstract Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static isBisSync(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getNumSubgroups()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBisSyncState()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isPaSyncOrBisSync(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastUtils;->isBisSync(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method
