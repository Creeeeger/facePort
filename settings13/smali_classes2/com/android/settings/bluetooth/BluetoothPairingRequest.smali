.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method isBlockingDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const-string p0, "bluetooth_blocking_device"

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "blocking_device_list"

    const-string v1, ""

    .line 172
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ";"

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    const-string v4, ","

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 179
    array-length v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    aget-object v4, v3, v0

    .line 182
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    .line 185
    :try_start_0
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string p0, "BluetoothPairingRequest"

    const-string p1, "Drop the pairing request for blocked device"

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPairingRequest"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onReceive :: Intent.getAction() is return null"

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive :: getAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 69
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_b

    if-eqz v4, :cond_a

    .line 71
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v6, 0xc

    if-ne v0, v6, :cond_2

    goto/16 :goto_1

    .line 77
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivityQP()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->isBlockingDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Bonding blocked"

    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BluetoothPairingRequest -- Pairing req is blocked for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v0, -0x80000000

    .line 85
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", canBondWithoutDialog = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->canBondWithoutDialog()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isOngoingPairByCsip = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isOngoingPairByCsip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 102
    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->canBondWithoutDialog()Z

    move-result v8

    if-nez v8, :cond_9

    .line 103
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isOngoingPairByCsip(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 109
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    const-class v8, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq v6, v7, :cond_6

    const/4 p0, 0x4

    if-eq v6, p0, :cond_6

    const/4 p0, 0x5

    if-ne v6, p0, :cond_8

    :cond_6
    const-string p0, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 116
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_7

    const-string/jumbo p0, "received Invalid Passkey or pin received, will cancel bond process"

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    return-void

    .line 122
    :cond_7
    invoke-virtual {v2, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    :cond_8
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 125
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_9
    :goto_0
    const/4 p0, 0x1

    .line 104
    invoke-virtual {v4, p0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    return-void

    :cond_a
    :goto_1
    const-string/jumbo p0, "onReceive :: mDevice is null or mDevice bonded already."

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string p0, "android.bluetooth.action.CSIS_SET_MEMBER_AVAILABLE"

    .line 128
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    if-nez v4, :cond_c

    return-void

    :cond_c
    const-string p0, "android.bluetooth.extra.CSIS_GROUP_ID"

    const/4 p1, -0x1

    .line 133
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_d

    return-void

    .line 146
    :cond_d
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v4, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->shouldPairByCsip(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: device = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: shouldPairByCsip = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", groupId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPairingRequest -- onReceive: device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldPairByCsip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    const-string p0, "BluetoothPairingRequest -- onReceive: auto createBond"

    .line 155
    invoke-static {p0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 158
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair(Landroid/bluetooth/BluetoothDevice;)V

    :cond_e
    :goto_2
    return-void
.end method
