.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;
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
    name = "BluetootCastDeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 1

    const-string p1, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetootCastDeviceFoundHandler :: addCastDevice"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmBluetoothCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->addCastDevice(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p1

    if-nez p1, :cond_1

    .line 200
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to created new CachedBluetoothDevice"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BluetootCastDeviceFoundHandler :: processActionFoundEvent"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->updateCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V

    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->processActionFoundEvent()V

    :cond_1
    :goto_0
    return-void
.end method
