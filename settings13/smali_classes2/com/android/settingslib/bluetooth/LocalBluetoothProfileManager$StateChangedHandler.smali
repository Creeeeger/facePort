.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    const-string v1, "LocalBluetoothProfileManager"

    if-nez v0, :cond_0

    const-string p0, "StateChangedHandler :: mProfile is null"

    .line 441
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 447
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateChangedHandler found new device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 451
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "StateChangedHandler :: Can\'t add CachedDevice"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string p3, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 458
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.profile.extra.isNormallyType"

    .line 459
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profiles StateChangedHandler device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", old state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", normally type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 465
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$fgetmEventManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v5, v0, v6, p3, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    const/4 v5, 0x0

    .line 468
    invoke-static {p1, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    if-nez v5, :cond_4

    const-string p0, "StateChangedHandler :: localBtManager is null"

    .line 470
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez p3, :cond_17

    const/4 p3, 0x1

    if-ne v3, p3, :cond_17

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " device"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_17

    .line 482
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "PAN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v8, "\u200e"

    if-eqz v3, :cond_e

    const-string p0, "PAN connection was rejected by NAP or Connection Timeout..."

    .line 483
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "android.bluetooth.pan.extra.LOCAL_ROLE"

    .line 489
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 492
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p2

    const/16 v1, 0xa

    if-nez p2, :cond_a

    .line 493
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result p2

    if-eqz p2, :cond_17

    :cond_5
    if-ne p0, p3, :cond_6

    .line 495
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pan_nap_connecting_error_summury:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 496
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 498
    :cond_6
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result p0

    if-ne p0, v1, :cond_7

    .line 499
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 501
    :cond_7
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 504
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 508
    :cond_8
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pan_connecting_error_summury:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 510
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 511
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 512
    :cond_9
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 513
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 518
    :cond_a
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result p2

    if-nez p2, :cond_17

    if-ne p0, p3, :cond_b

    .line 520
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 522
    :cond_b
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result p0

    if-ne p0, v1, :cond_c

    .line 523
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 525
    :cond_c
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 528
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 532
    :cond_d
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pan_connecting_error_summury:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 534
    :goto_2
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 540
    :cond_e
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "HID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    if-nez v4, :cond_11

    .line 542
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 545
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 549
    :cond_f
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_hid_connecting_error_summury:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 550
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p2

    if-nez p2, :cond_10

    .line 551
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 552
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 555
    :cond_10
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-nez p2, :cond_17

    .line 556
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 561
    :cond_11
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p0

    if-nez p0, :cond_12

    .line 562
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 563
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hid_normally_connecting_error_summury:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 567
    :cond_12
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p0

    if-nez p0, :cond_17

    .line 569
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 570
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 574
    :cond_13
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 575
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 583
    :cond_14
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 584
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_16

    .line 585
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeadDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 586
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeadDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-nez p2, :cond_15

    move-object p0, v0

    .line 590
    :cond_15
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 591
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result p0

    if-lez p0, :cond_16

    return-void

    .line 596
    :cond_16
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    :goto_3
    return-void
.end method

.method protected onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 8

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 606
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 607
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " device"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LocalBluetoothProfileManager"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p1, :cond_1

    if-ne v0, v2, :cond_1

    .line 616
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 617
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 618
    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceSide(I)V

    .line 619
    invoke-virtual {p2, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceMode(I)V

    .line 622
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    .line 623
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p2, v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHiSyncId(J)V

    .line 630
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getCsipSetCoordinatorProfile()Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    move-result-object p1

    const/4 v5, -0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-eqz p1, :cond_3

    if-ne v0, v2, :cond_3

    .line 634
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p1

    if-ne p1, v5, :cond_3

    .line 635
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getCsipSetCoordinatorProfile()Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    move-result-object p1

    .line 636
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 638
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 639
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->CAP:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 640
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    .line 648
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 651
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v6

    cmp-long p1, v6, v3

    if-nez p1, :cond_4

    .line 652
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p1

    if-eq p1, v5, :cond_5

    .line 653
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 655
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v2

    .line 654
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onProfileConnectionStateChangedIfProcessed(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)Z

    move-result p1

    xor-int/2addr v1, p1

    :cond_5
    if-eqz v1, :cond_6

    .line 658
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 659
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->-$$Nest$fgetmEventManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 660
    invoke-interface {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result p0

    .line 659
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    :cond_6
    return-void
.end method
