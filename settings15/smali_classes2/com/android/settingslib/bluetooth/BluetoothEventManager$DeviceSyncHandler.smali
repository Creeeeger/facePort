.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AudioModeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "AudioModeChangedHandler() action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAudioModeChanged()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AudioTypeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_0
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AutoOnStateChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "AutoOnStateChangedHandler() action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "android.bluetooth.extra.AUTO_ON_STATE"

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAutoOnStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$BatteryLevelChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_0
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ClassChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothClass;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_1
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ConnectionStateChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string p3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {p3, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$DeviceFoundHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string p1, "android.bluetooth.device.extra.RSSI"

    const/16 v0, -0x8000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p1

    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.extra.IS_COORDINATED_SET_MEMBER"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    const-string v3, "BluetoothEventManager"

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addUnBondedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DeviceFoundHandler created new CachedBluetoothDevice : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findFilteredDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addUnBondedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    goto/16 :goto_3

    :cond_3
    const-string p0, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothClass;

    const-string v5, "com.samsung.bluetooth.device.extra.APPEARANCE"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v5

    const-string v6, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    sget-boolean v6, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DeviceFoundHandler update CachedBluetoothDevice : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    if-eqz p0, :cond_5

    iget-object p1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    move v2, v4

    :cond_5
    iget-short p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eq p0, v5, :cond_6

    iput-short v5, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    move v2, v4

    :cond_6
    iget-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_7
    iput-object v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    iput-object v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    :goto_1
    iget-boolean p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq p0, v4, :cond_a

    iput-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    :cond_a
    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    iget-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_d

    :cond_c
    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    move v2, v4

    :cond_d
    :goto_2
    iget p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq p0, p3, :cond_e

    iput p3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    move v2, v4

    :cond_e
    const-string p0, "CachedBluetoothDevice"

    if-eqz v2, :cond_f

    const-string p1, "calling dispatchAttributesChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "processActionFoundEvent :: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$DualModeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "DualModeChangedHandler: action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ManufacturerChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_MANUFACTURER_CHANGED with no EXTRA_DEVICE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchManufacturerData([B)V

    :cond_1
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$NameChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result p2

    const/16 v0, 0xa

    if-eq v0, p2, :cond_4

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->isCustomDeviceAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isSubDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "CachedBluetoothDeviceManager"

    const-string v0, "onDeviceNameUpdated :: skip same name update"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshName()V

    iget-object p2, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_2
    iget p2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq p2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshName()V

    :cond_3
    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_5

    iget p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "NameChangedHandler :: State - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$NetworkResetSettingsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "NetworkResetSettingsHandler() action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$PairingCancelHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->isBlockingDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string p2, "\u200e"

    invoke-static {p2, p0, p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p2, 0x7f14077a

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/high16 v6, -0x80000000

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget v15, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->$r8$classId:I

    packed-switch v15, :pswitch_data_0

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "BluetoothEventManager"

    const-string v1, "UuidChangedHandler: cachedDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    array-length v2, v0

    new-array v2, v2, [Landroid/os/ParcelUuid;

    move v3, v13

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    check-cast v4, Landroid/os/ParcelUuid;

    aput-object v4, v2, v3

    add-int/2addr v3, v14

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles([Landroid/os/ParcelUuid;)Z

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0x7530

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x3a98

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->COORDINATED_SET:Landroid/os/ParcelUuid;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-ne v0, v12, :cond_5

    const-wide/32 v3, 0x1d4c0

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x1388

    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onUuidChanged: Time since last connect="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v5, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v5, v2

    if-lez v0, :cond_7

    iget-wide v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectDevice()V

    :cond_7
    invoke-virtual {v1, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_8
    :goto_2
    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$PairingCancelHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$NameChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ManufacturerChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_3
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$DualModeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    return-void

    :pswitch_5
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$DeviceFoundHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_6
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ConnectionStateChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$ClassChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_8
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$BatteryLevelChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_9
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AutoOnStateChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_a
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AudioTypeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_b
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$AudioModeChangedHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothEventManager"

    if-nez v2, :cond_9

    const-string v0, "AppPackageChangedHandler: action is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string v4, "AppPackageChangedHandler: action = "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AppPackageChangedHandler: package name = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.app.watchmanagerstub"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setStubInfo(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothEventManager"

    if-nez v0, :cond_b

    const-string v0, "ActiveDeviceChangedHandler: action is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v11, 0x2

    goto :goto_4

    :cond_c
    const-string v4, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v11, v14

    goto :goto_4

    :cond_d
    const-string v4, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v11, 0x15

    goto :goto_4

    :cond_e
    const-string v4, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v11, 0x16

    :goto_4
    invoke-virtual {v1, v3, v11}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_5

    :cond_f
    const-string v1, "ActiveDeviceChangedHandler: unknown action "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :pswitch_e
    const-string v2, "BluetoothEventManager"

    if-nez v3, :cond_10

    const-string v0, "AclStateChangedHandler: device is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isSubDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "AclStateChangedHandler: action is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_13

    const-string v0, "AclStateChangedHandler: activeDevice is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v1, "ActiveDeviceChangedHandler: unknown action "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_14
    move v11, v13

    goto :goto_6

    :cond_15
    const/4 v11, 0x2

    :goto_6
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v1, v3, v11}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_7

    :cond_16
    :goto_8
    return-void

    :pswitch_f
    invoke-direct/range {p0 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->onReceive$com$android$settingslib$bluetooth$BluetoothEventManager$NetworkResetSettingsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_10
    if-nez v3, :cond_17

    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_17
    const-string v15, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v15, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v7, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isOngoingPairByCsip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_18

    monitor-exit v8

    goto :goto_b

    :cond_18
    if-ne v15, v4, :cond_19

    monitor-exit v8

    goto :goto_a

    :cond_19
    :try_start_1
    iput v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mGroupIdOfLateBonding:I

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    if-eq v15, v5, :cond_1b

    invoke-virtual {v8, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v18

    if-nez v18, :cond_1b

    iget-object v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v12, v12, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    new-instance v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v9, v12, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v8, v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    iget v9, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-ne v9, v5, :cond_1a

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_9

    :cond_1a
    invoke-virtual {v11, v14, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkLEConnectionGuide(ZZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectDevice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :cond_1b
    :goto_9
    monitor-exit v8

    :goto_a
    const-string v8, "BluetoothEventManager"

    const-string v11, "Should not update UI for the set member"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const-string v8, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v8, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    if-nez v8, :cond_1e

    sget-boolean v8, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v8, :cond_1c

    const-string v11, "BluetoothEventManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Got bonding state changed for "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", but we have no record of that device."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v11, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    iget-object v11, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v11

    if-nez v11, :cond_1d

    if-eqz v8, :cond_1d

    const-string v8, "BluetoothEventManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Got bonding state changed for "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", but we have no record of that device."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v8, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v8, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    :cond_1e
    if-nez v8, :cond_21

    sget-boolean v6, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v6, :cond_1f

    const-string v6, "BluetoothEventManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Got bonding state changed for "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", but device not added in cache."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move/from16 v19, v7

    :cond_20
    :goto_c
    const/16 v6, 0xc

    goto/16 :goto_14

    :cond_21
    const-string v11, "BluetoothEventManager"

    const-string v13, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "onBondingStateChanged :: Device ["

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "], bond state change to "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "CachedBluetoothDevice"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    iput v15, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    sget-object v14, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    sget-object v9, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_RING:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    if-ne v15, v5, :cond_29

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    if-ne v11, v4, :cond_24

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    iget v9, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    const/4 v13, 0x1

    add-int/lit8 v14, v9, 0x1

    iput v14, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v11, :cond_27

    iget-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsBondingByCached:Z

    if-eqz v11, :cond_27

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v11

    if-eqz v11, :cond_27

    iget-object v13, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    iget-boolean v14, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v14, :cond_23

    iget-object v14, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    iget-object v14, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_d

    :cond_22
    const/4 v14, 0x0

    :goto_d
    iget-object v11, v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    const/4 v9, 0x1

    add-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.samsung.settings.bluetooth.restoredialog.LAUNCH"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x14000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v11, "cachedAddress"

    iget-object v13, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v9, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v9, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_e

    :cond_24
    const/16 v13, 0xc

    if-ne v11, v13, :cond_27

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRing()Z

    move-result v11

    if-eqz v11, :cond_25

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v11, v9}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_e

    :cond_25
    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v13

    iget-object v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v12

    invoke-static {v9, v11, v13, v12}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v9, v14}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_e

    :cond_26
    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v9, v11}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    :cond_27
    :goto_e
    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    iput-object v10, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimestamp:Ljava/sql/Timestamp;

    iput-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsBondingByCached:Z

    :cond_28
    move/from16 v19, v7

    goto/16 :goto_f

    :cond_29
    const/4 v11, 0x0

    const/16 v12, 0xc

    if-ne v15, v12, :cond_28

    new-instance v12, Ljava/sql/Timestamp;

    move/from16 v19, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v12, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimestamp:Ljava/sql/Timestamp;

    iput-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsBondingByCached:Z

    iget-boolean v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    if-eqz v6, :cond_2a

    iput-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    :cond_2a
    iget-boolean v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v6, :cond_2e

    iput-boolean v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v11, 0x1f00

    if-eq v7, v11, :cond_2c

    if-eqz v6, :cond_2b

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v7, v6, :cond_2c

    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onBondingStateChanged :: COD - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    iget v7, v7, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    :cond_2c
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v6

    if-eqz v6, :cond_2d

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_2d

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->semSetManufacturerData([B)Z

    :cond_2d
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRing()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v6, v9}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_f

    :cond_2f
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v9

    iget-object v11, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v11

    invoke-static {v6, v7, v9, v11}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v6, v14}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_f

    :cond_30
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v7, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    :goto_f
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    invoke-interface {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_10

    :cond_31
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;

    check-cast v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "semOnDeviceBondStateChanged: Device = "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", bondState = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "SecBluetoothDevicePreference"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v15, v4, :cond_33

    iget-object v9, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v10, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    :cond_33
    if-ne v15, v5, :cond_32

    const/high16 v9, -0x80000000

    if-eq v0, v9, :cond_32

    const-string v9, "semOnDeviceBondStateChanged: reason = "

    invoke-static {v0, v9, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-boolean v11, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v11, :cond_34

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    const v13, 0x7f1407e2

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget-object v9, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v9, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->getSelectedAdapter(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    goto :goto_11

    :cond_34
    packed-switch v0, :pswitch_data_1

    :pswitch_11
    const-string v9, ""

    goto :goto_12

    :pswitch_12
    iget-object v9, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v9}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f1407de

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :cond_35
    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f1407e1

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :pswitch_13
    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f1407e0

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :pswitch_14
    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f1407dd

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_12
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_36

    iget-object v11, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v9, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    :cond_36
    iget-object v9, v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v9, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->getSelectedAdapter(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    goto/16 :goto_11

    :cond_37
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    const/16 v6, 0xc

    if-ne v15, v6, :cond_39

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v6

    if-eqz v6, :cond_38

    sget-boolean v6, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz v6, :cond_38

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectDevice()V

    :cond_38
    iget-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->sJustBondedDeviceAddressSet:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-boolean v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-nez v6, :cond_3a

    if-ne v15, v5, :cond_20

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_c

    :cond_3a
    const/16 v6, 0xc

    if-ne v15, v6, :cond_3b

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findFilteredDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-nez v6, :cond_3b

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    :cond_3b
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v7, v8, v15}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_13

    :goto_14
    if-ne v15, v6, :cond_42

    invoke-static {v2, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_41

    sget-boolean v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v0, :cond_41

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v6, "bluetooth_blocking_device"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "blocking_device_list"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    goto/16 :goto_19

    :cond_3c
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    array-length v10, v4

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v10, :cond_40

    aget-object v9, v4, v11

    const-string v13, ","

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v9, v14

    const/4 v15, 0x5

    if-eq v9, v15, :cond_3e

    move-object/from16 p1, v4

    :catch_0
    :goto_16
    move/from16 v16, v10

    :cond_3d
    :goto_17
    const/4 v4, 0x1

    goto :goto_18

    :cond_3e
    const/4 v9, 0x0

    aget-object v15, v14, v9

    const/4 v9, 0x1

    aget-object v12, v14, v9

    const/16 v16, 0x2

    :try_start_2
    aget-object v17, v14, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v16, 0x3

    aget-object v16, v14, v16
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 p1, v4

    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v16, 0x4

    aget-object v14, v14, v16

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v16, v10

    const/4 v10, 0x2

    if-le v14, v10, :cond_3f

    goto :goto_17

    :cond_3f
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :catch_1
    move-object/from16 p1, v4

    goto :goto_16

    :goto_18
    add-int/2addr v11, v4

    move-object/from16 v4, p1

    move/from16 v10, v16

    goto :goto_15

    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_41
    :goto_19
    if-eqz v8, :cond_55

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_55

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    invoke-virtual {v8, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget v0, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_55

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter v1

    :try_start_4
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    invoke-virtual {v0, v8}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->initCsipDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    goto/16 :goto_26

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_42
    move-object v6, v10

    if-ne v15, v5, :cond_55

    invoke-static {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    if-eqz v5, :cond_55

    if-eqz v8, :cond_4f

    iget v7, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_44

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-eqz v7, :cond_43

    goto :goto_1b

    :cond_43
    :goto_1a
    move/from16 v4, v19

    const/16 v6, 0xc

    goto/16 :goto_23

    :cond_44
    :goto_1b
    sget-boolean v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz v7, :cond_4d

    iget-object v7, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter v7

    :try_start_5
    iget v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    iget-object v10, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    invoke-virtual {v10, v8}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    iget-object v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_45

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    iget-object v12, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iput-object v6, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1c

    :catchall_2
    move-exception v0

    goto :goto_21

    :cond_45
    if-eqz v10, :cond_46

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    :cond_46
    iget-object v10, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_48

    iget v11, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    if-ne v11, v9, :cond_48

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    if-ne v9, v4, :cond_47

    const-string v4, "CachedBluetoothDeviceManager -- onDeviceUnpaired: cancelBondProcess()"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1d

    :cond_47
    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v9, 0xc

    if-ne v4, v9, :cond_48

    const-string v4, "CachedBluetoothDeviceManager -- onDeviceUnpaired: removeBond()"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :cond_48
    :goto_1d
    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v4, v8}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iget-object v9, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v9, :cond_4a

    iget-boolean v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v4, :cond_49

    invoke-virtual {v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeRestoredDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1e

    :cond_49
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpairLegacy()V

    :goto_1e
    invoke-virtual {v8, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_20

    :cond_4a
    if-eqz v4, :cond_4c

    iget-boolean v9, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v9, :cond_4b

    invoke-virtual {v7, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeRestoredDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1f

    :cond_4b
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpairLegacy()V

    :goto_1f
    invoke-virtual {v4, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4c
    :goto_20
    monitor-exit v7

    goto :goto_22

    :goto_21
    monitor-exit v7

    throw v0

    :cond_4d
    :goto_22
    iget v4, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4e

    invoke-virtual {v8, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    goto/16 :goto_1a

    :cond_4e
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-eqz v4, :cond_43

    iput-object v6, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto/16 :goto_1a

    :goto_23
    if-ne v4, v6, :cond_4f

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_4f
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v4

    if-nez v4, :cond_55

    sget-boolean v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v4, :cond_55

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->isBlockingDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_55

    if-nez v2, :cond_50

    const-string v0, "BluetoothEventManager"

    const-string v1, "showUnbondMessage: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_50
    if-eqz v8, :cond_52

    iget-boolean v1, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v1, :cond_52

    const/16 v1, 0x9

    if-eq v0, v1, :cond_52

    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_51

    const v0, 0x7f14077c

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_51
    const v0, 0x7f14077b

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    :cond_52
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_53

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_53
    packed-switch v0, :pswitch_data_2

    :pswitch_15
    const-string v1, "showUnbondMessage: Not displaying any message for reason: "

    const-string v2, "BluetoothEventManager"

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :pswitch_16
    invoke-static/range {p3 .. p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "\u200e"

    invoke-static {v0, v1, v0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140778

    filled-new-array {v0, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_54
    const v0, 0x7f140779

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :pswitch_17
    const v0, 0x7f140784

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :pswitch_18
    const v0, 0x7f14077a

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_55
    :goto_26
    return-void

    :goto_27
    monitor-exit v8

    throw v0

    :pswitch_19
    move-object v6, v10

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "BluetoothEventManager"

    const-string v7, "AdapterStateChangedHandler :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-static {v3, v7, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v7, v3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_28

    :cond_56
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v7, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v7, :cond_60

    monitor-enter v7

    const/16 v0, 0xd

    if-ne v3, v0, :cond_5d

    :try_start_6
    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_29
    if-ltz v0, :cond_5c

    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v8, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_58

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_57
    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v10, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v11, 0xc

    if-eq v10, v11, :cond_57

    iget-object v10, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iput-object v6, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_2a

    :catchall_3
    move-exception v0

    goto :goto_2e

    :cond_58
    iget-object v8, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v8, :cond_59

    iget v8, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v9, 0xc

    if-eq v8, v9, :cond_59

    invoke-virtual {v4, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_59
    iget v8, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v9, 0xc

    if-eq v8, v9, :cond_5a

    iget-boolean v8, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez v8, :cond_5a

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    invoke-virtual {v7, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_2b
    const/4 v4, -0x1

    goto :goto_2c

    :cond_5a
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    iget-object v8, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v8, :cond_5b

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    :cond_5b
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    goto :goto_2b

    :goto_2c
    add-int/2addr v0, v4

    goto :goto_29

    :cond_5c
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateSequeces()V

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mGroupIdOfLateBonding:I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    goto :goto_2f

    :cond_5d
    if-ne v3, v4, :cond_5f

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_2d
    if-ltz v0, :cond_5f

    iget-object v4, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    iput-object v6, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5e
    const/4 v4, -0x1

    add-int/2addr v0, v4

    goto :goto_2d

    :goto_2e
    monitor-exit v7

    throw v0

    :cond_5f
    :goto_2f
    monitor-exit v7

    :cond_60
    const/16 v0, 0xc

    if-ne v3, v0, :cond_6a

    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    if-eqz v0, :cond_69

    invoke-static {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v7, "com.android.settings"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_61

    goto :goto_30

    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Landroid/app/ActivityManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_62

    goto :goto_31

    :cond_63
    :goto_30
    invoke-virtual {v0, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    goto :goto_32

    :cond_64
    :goto_31
    if-eqz v4, :cond_65

    goto/16 :goto_36

    :cond_65
    :goto_32
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_7
    sget-boolean v4, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    if-eqz v4, :cond_67

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v6, "desktopmode"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v4

    const/16 v6, 0x66

    if-ne v4, v6, :cond_66

    const/4 v11, 0x2

    goto :goto_33

    :cond_66
    const/4 v11, 0x0

    :goto_33
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v4, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_35

    :catch_2
    move-exception v0

    goto :goto_34

    :cond_67
    iget-object v4, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_35

    :goto_34
    const-string v4, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startActivity() failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_35
    const-string v0, "setQuickPannelOn :: false, from Dex :: false"

    const-string v4, "BluetoothUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    sput-boolean v4, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    :cond_69
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    :cond_6a
    if-ne v3, v5, :cond_6c

    const-string v0, "bluetooth_restart"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key_bluetooth_restart"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_bluetooth_restart"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6b
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    :cond_6c
    :goto_36
    return-void

    :pswitch_1a
    move-object v6, v10

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "BluetoothEventManager"

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz v3, :cond_70

    const-string v5, "com.samsung.android.intent.extra.IS_UPDATE_SYNC_BLUETOOTH"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v7, "com.samsung.android.intent.extra.UPDATE_DEVICE_NAME_BLUETOOTH"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_6d

    const-string v0, "DeviceSyncHandler :: CachedDevice is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_6d
    if-eqz v5, :cond_6e

    const-string v5, "DeviceSyncHandler :: Sync device will be updated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    if-eqz v0, :cond_72

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v4, 0xc

    if-ne v1, v4, :cond_72

    if-eqz v2, :cond_72

    sget-boolean v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz v1, :cond_72

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_37

    :cond_6e
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_6f

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    :cond_6f
    const-string v0, "DeviceSyncHandler :: Sync device will be removed"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_37

    :cond_70
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, "DeviceSyncHandler :: remove MESSAGE_SYNC_INTENT"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_71
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "DeviceSyncHandler :: send MESSAGE_SYNC_INTENT"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_37
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method
