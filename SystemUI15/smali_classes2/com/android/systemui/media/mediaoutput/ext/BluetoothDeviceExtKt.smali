.class public abstract Lcom/android/systemui/media/mediaoutput/ext/BluetoothDeviceExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getBatteryByMetadata(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/bluetooth/SmepTag;)I
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result p1

    int-to-byte v0, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    aget-byte p0, p0, v0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
