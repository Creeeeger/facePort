.class public final Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mRegistered:Z

.field public final mSmepCallbacks:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothSmepReceiver"

    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "data = "

    const-string v6, "com.samsung.bluetooth.device.extra.META_DATA"

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    if-eqz v4, :cond_2

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq v4, v7, :cond_d

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;

    invoke-interface {v1, v2, v4}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_2
    const-string v4, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    const-string v0, "parseSupportedFeatures :: DataPacket is too short."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_3
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    const v7, 0xffff

    and-int/2addr v5, v7

    sget-object v8, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v8}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v8

    const-string v9, "%x"

    const-string v10, " = "

    const-string v11, "parseTlvs :: "

    if-ne v5, v8, :cond_4

    const/4 v0, 0x2

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    and-int/2addr v2, v7

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    new-array v6, v5, [B

    add-int/lit8 v8, v0, 0x3

    invoke-static {v1, v8, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v0, v5

    invoke-static {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v5

    aget v5, v6, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "parseSupportedFeatures :: NOT SUPPORTED FEATURE : "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move v13, v4

    :goto_2
    array-length v14, v1

    if-ge v13, v14, :cond_5

    aget-byte v14, v1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    and-int/2addr v14, v7

    add-int/lit8 v15, v13, 0x2

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    new-array v6, v15, [B

    add-int/lit8 v7, v13, 0x3

    invoke-static {v1, v7, v6, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x3

    add-int/2addr v13, v15

    invoke-static {v14}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "parseTlvs :: NOT SUPPORTED STATE : "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    :pswitch_3
    const/4 v4, 0x0

    const/4 v6, 0x1

    const v7, 0xffff

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v1, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_d

    :cond_9
    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;

    if-eqz v1, :cond_b

    invoke-interface {v6, v2, v5}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    :cond_b
    if-eqz v3, :cond_c

    invoke-interface {v6, v2, v8}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    :cond_c
    if-eqz v4, :cond_a

    invoke-interface {v6, v2, v12}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    goto :goto_7

    :cond_d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    const-string p1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->setListening(Z)V

    :cond_0
    return-void
.end method
