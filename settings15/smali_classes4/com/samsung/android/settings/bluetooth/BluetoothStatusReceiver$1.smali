.class public final Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothStatusReceiver"

    const-string v2, "mHandler :: DEVICE_CONNECTION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_start_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "mf_data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkLEConnectionGuide(ZZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectDevice()V

    goto :goto_0

    :cond_4
    const-string p0, "mHandler :: cachedBluetoothDevice is not setted."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
