.class final Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/MapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/MapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fputmService(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)V

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmService(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string v1, "MapProfile"

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapProfile found new device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update cached device : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 97
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_1
    const-string p2, "Bluetooth device is null"

    .line 99
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/MapProfile;Z)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/MapProfile;Z)V

    return-void
.end method
