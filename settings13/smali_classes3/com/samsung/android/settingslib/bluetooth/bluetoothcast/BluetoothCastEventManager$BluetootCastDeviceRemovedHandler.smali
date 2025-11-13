.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;
.super Ljava/lang/Object;
.source "BluetoothCastEventManager.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetootCastDeviceRemovedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 1

    const-string p1, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 215
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " removed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetootCastDeviceRemovedHandler :: removeCastDevice"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->removeCastDevice(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetootCastDeviceRemovedHandler :: not found castdevice"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
