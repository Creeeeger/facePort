.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 p3, -0x80000000

    .line 168
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 170
    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdapterStateChangedHandler :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->onBluetoothStateChanged(I)V

    return-void
.end method
