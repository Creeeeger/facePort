.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const-string p1, "android.bluetooth.device.extra.RSSI"

    const/16 v0, -0x8000

    .line 565
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    const-string p1, "android.bluetooth.device.extra.NAME"

    .line 566
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "android.bluetooth.extra.IS_COORDINATED_SET_MEMBER"

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 571
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    const-string v1, "BluetoothEventManager"

    if-nez v9, :cond_1

    .line 574
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addUnBondedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {v9, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 578
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeviceFoundHandler created new CachedBluetoothDevice : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "android.bluetooth.device.extra.CLASS"

    .line 592
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/bluetooth/BluetoothClass;

    const-string p0, "com.samsung.bluetooth.device.extra.APPEARANCE"

    .line 593
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    const-string p0, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    .line 594
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 595
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v8

    .line 597
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeviceFoundHandler update CachedBluetoothDevice : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x1

    move-object v1, v9

    .line 598
    invoke-virtual/range {v1 .. v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;Z[BI)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 600
    invoke-virtual {v9, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 602
    invoke-virtual {v9, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setIsCoordinatedSetMember(Z)V

    return-void
.end method
