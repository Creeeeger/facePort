.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "BluetoothPairingRequest"

    const-string p1, "onReceive :: Intent.getAction() is return null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "BluetoothPairingRequest"

    const-string v1, "onReceive :: getAction = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 v2, 0xc

    if-ne p0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p0

    const/4 v2, 0x4

    const/4 v6, 0x5

    if-nez p0, :cond_6

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivityQP()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "bluetooth_blocking_device"

    invoke-virtual {p1, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v7, "blocking_device_list"

    const-string v8, ""

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v8, p0

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_6

    aget-object v10, p0, v9

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-eq v11, v6, :cond_4

    goto :goto_1

    :cond_4
    aget-object v11, v10, v4

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :try_start_0
    aget-object v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, v5, :cond_5

    const-string p0, "BluetoothPairingRequest"

    const-string p1, "Drop the pairing request for blocked device"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    const-string p0, "BluetoothPairingRequest"

    const-string p1, "Bonding blocked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BluetoothPairingRequest -- Pairing req is blocked for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const-string p0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v7, "BluetoothPairingRequest"

    const-string v8, "onReceive: type = "

    const-string v9, ", canBondWithoutDialog = "

    invoke-static {p0, v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->canBondWithoutDialog()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isOngoingPairByCsip = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v9, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isOngoingPairByCsip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v5, :cond_7

    const/4 v7, 0x3

    if-ne p0, v7, :cond_8

    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->canBondWithoutDialog()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isOngoingPairByCsip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p0, v5, :cond_9

    if-eq p0, v2, :cond_9

    if-ne p0, v6, :cond_b

    :cond_9
    const-string p0, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_a

    const-string p0, "BluetoothPairingRequest"

    const-string p1, "received Invalid Passkey or pin received, will cancel bond process"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    return-void

    :cond_a
    const-string p2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    const-string p0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :cond_c
    :goto_3
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    return-void

    :cond_d
    :goto_4
    const-string p0, "BluetoothPairingRequest"

    const-string p1, "onReceive :: mDevice is null or mDevice bonded already."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v2, "android.bluetooth.action.CSIS_SET_MEMBER_AVAILABLE"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    if-nez v1, :cond_f

    return-void

    :cond_f
    const-string p0, "android.bluetooth.extra.CSIS_GROUP_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_10

    return-void

    :cond_10
    iget-object p2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    const-string v0, "Bond "

    const-string v2, "shouldPairByCsip: bondState = "

    monitor-enter p2

    :try_start_1
    iget-object v6, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_11

    const-string v0, "CachedBluetoothDeviceManager"

    const-string v2, "shouldPairByCsip: mOngoingSetMemberPair != null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    :goto_5
    move v3, v4

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_11
    :try_start_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_12

    const-string v0, "CachedBluetoothDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_5

    :cond_12
    :try_start_3
    const-string v2, "CachedBluetoothDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by CSIP"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    iput p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p2

    :goto_6
    const-string v0, "BluetoothPairingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onReceive: device = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothPairingRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onReceive: shouldPairByCsip = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", groupId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothPairingRequest -- onReceive: device = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldPairByCsip = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", groupId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz v3, :cond_14

    const-string p0, "BluetoothPairingRequest -- onReceive: auto createBond"

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-class p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBondingState()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "BluetoothPairingRequest -- onReceive: isBondingState. Can not createBond"

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair()V

    goto :goto_8

    :goto_7
    monitor-exit p2

    throw p0

    :cond_14
    :goto_8
    return-void
.end method
