.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceNameChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    const-string p0, "BluetoothEventManager"

    const-string p2, "DeviceNameChangedHandler :: com.android.settings.DEVICE_NAME_CHANGED"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    return-void
.end method
