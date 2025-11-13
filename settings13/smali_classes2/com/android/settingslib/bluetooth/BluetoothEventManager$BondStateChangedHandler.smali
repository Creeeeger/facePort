.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 866
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 868
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    .line 911
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 889
    :pswitch_1
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u200e"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 892
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_black_list_error_message:I

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v0

    aput-object p0, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 896
    :cond_1
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_error_message:I

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 884
    :pswitch_2
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pairing_rejected_error_message:I

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 907
    :pswitch_3
    sget p2, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 917
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    .line 725
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    .line 728
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 731
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onBondStateChangedIfProcess(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothEventManager"

    const-string v3, "Should not update UI for the set member"

    .line 732
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "android.bluetooth.device.extra.REASON"

    .line 738
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 742
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_4

    .line 745
    sget-boolean v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v2, "BluetoothEventManager"

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got bonding state changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", but we have no record of that device."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    const-string v1, "BluetoothEventManager"

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but we have no record of that device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_4
    const/16 v2, 0xa

    if-nez v1, :cond_5

    .line 763
    sget-boolean v3, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "BluetoothEventManager"

    .line 764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got bonding state changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", but device not added in cache."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v3, "BluetoothEventManager"

    const-string v4, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    .line 768
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getVisible()Z

    move-result v3

    if-nez v3, :cond_6

    if-ne v0, v2, :cond_8

    .line 772
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 776
    :cond_6
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 779
    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(II)V

    .line 781
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmCallbacks(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 782
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmCallbacks(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 783
    invoke-interface {v5, v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 785
    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v3, :cond_a

    .line 791
    invoke-static {p1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 792
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p1

    if-nez p1, :cond_9

    .line 793
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->removeBlockingDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    if-eqz v1, :cond_10

    .line 799
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getCsipSetCoordinatorProfile()Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 800
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p1

    if-ne p1, v5, :cond_10

    .line 801
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->initCsipDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_3

    :cond_a
    if-ne v0, v2, :cond_10

    .line 806
    invoke-static {p1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz v1, :cond_c

    .line 812
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 813
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    .line 815
    :cond_b
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onDeviceUnpaired(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 817
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v2

    if-eq v2, v5, :cond_c

    .line 818
    invoke-virtual {v1, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    .line 826
    :cond_c
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->isBlockingDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p1, :cond_d

    const-string p0, "BluetoothEventManager"

    const-string/jumbo p1, "showUnbondMessage: context is null"

    .line 831
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    if-eqz v1, :cond_f

    .line 835
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    if-eq p2, v0, :cond_f

    .line 837
    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 838
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_fail_restored_tablet:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 840
    :cond_e
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_fail_restored:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 842
    :goto_2
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 847
    :cond_f
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)V

    :cond_10
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 785
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
