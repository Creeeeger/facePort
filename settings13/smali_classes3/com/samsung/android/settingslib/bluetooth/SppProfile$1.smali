.class Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;
.super Landroid/os/Handler;
.source "SppProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/SppProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/bluetooth/SppProfile;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settingslib/bluetooth/SppProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 89
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semIsGearConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->-$$Nest$fgetmDeviceManager(Lcom/samsung/android/settingslib/bluetooth/SppProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    const-string v2, "SppProfile"

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SppProfile found new device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->-$$Nest$fgetmDeviceManager(Lcom/samsung/android/settingslib/bluetooth/SppProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update cached device : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 100
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_3
    const-string v0, "Bluetooth device is null"

    .line 102
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
