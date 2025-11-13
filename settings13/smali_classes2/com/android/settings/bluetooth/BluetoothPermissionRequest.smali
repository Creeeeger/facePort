.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field mRequestType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 9

    .line 171
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "BluetoothPermissionRequest"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "Remote device info is null, so dismiss the BT permission activity"

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    return v3

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    .line 190
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    .line 193
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    return v3

    :cond_2
    if-nez v8, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "checkUserChoice() :: No cahced device!"

    .line 205
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 214
    :cond_3
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v6, :cond_7

    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    if-nez v0, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->isMirrorLinkRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto/16 :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    .line 225
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto/16 :goto_0

    :cond_5
    if-ne v0, v6, :cond_6

    .line 228
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 231
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad phonebookPermission: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    if-ne v0, v5, :cond_b

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    if-nez v0, :cond_8

    .line 238
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->isMirrorLinkRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 239
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    :cond_8
    if-ne v0, v3, :cond_9

    .line 244
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    :cond_9
    if-ne v0, v6, :cond_a

    .line 247
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 250
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad messagePermission: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    if-ne v0, v4, :cond_f

    .line 253
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    if-nez v0, :cond_c

    .line 257
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->isMirrorLinkRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 258
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    :cond_c
    if-ne v0, v3, :cond_d

    .line 263
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_d
    if-ne v0, v6, :cond_e

    .line 266
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 269
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad simPermission: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_f
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkUserChoice(): returning "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isMirrorLinkRunning()Z
    .locals 1

    const-string/jumbo p0, "net.mirrorlink.on"

    .line 155
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 278
    iget v1, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "PBAP"

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v1, "MAP"

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    const-string v1, "SAP"

    goto :goto_0

    .line 285
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_0
    iget-object v4, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3

    const-string v4, "[unknown]"

    goto :goto_1

    :cond_3
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    iget-object v4, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    const-string v4, "%s (%s)"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object v4, v2, v6

    if-eqz p1, :cond_4

    const-string v1, "granted"

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "rejected"

    :goto_2
    aput-object v1, v2, v3

    const-string v1, "User authorization of profile %s for device %s was %s"

    .line 288
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 290
    iget-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 291
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    const-string v12, "BluetoothPermission"

    const-string v14, ""

    .line 290
    invoke-static/range {v7 .. v15}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    move v3, v6

    :cond_5
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 295
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    iget v2, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 69
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPermissionRequest"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onReceive :: Intent.getAction() is null"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive :: getAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "user"

    .line 81
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 83
    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 88
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 89
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    const-string/jumbo p2, "service.bt.security.policy.mode"

    .line 100
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const-string p1, "SAP service is disabled; IT Policy is Handsfree Only"

    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    return-void

    :cond_2
    const-string/jumbo p2, "phone"

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    if-eqz p2, :cond_3

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reject SAP Connection Request during ongoing call : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    return-void

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 133
    :cond_4
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    const-class v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x18000000

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->makeNotiSound(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method
