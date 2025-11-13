.class public abstract synthetic Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    return-object p0
.end method
