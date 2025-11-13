.class public Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSmepReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private final mSmepCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private parseTlvs(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "BluetoothSmepReceiver"

    if-eqz v1, :cond_b

    .line 149
    array-length v3, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x0

    .line 155
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    const v6, 0xffff

    and-int/2addr v4, v6

    .line 157
    sget-object v7, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v7

    const-string v8, "%x"

    const-string v9, " = "

    const-string v10, "parseTlvs :: "

    if-ne v4, v7, :cond_1

    const/4 v0, 0x2

    .line 162
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_a

    .line 163
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    add-int/lit8 v7, v0, 0x2

    .line 164
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 166
    new-array v11, v7, [B

    add-int/lit8 v12, v0, 0x3

    .line 167
    invoke-static {v1, v12, v11, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    .line 173
    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v7

    .line 174
    sget-object v11, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v7

    aget v7, v11, v7

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseSupportedFeatures :: NOT SUPPORTED FEATURE : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v3

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 200
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 201
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move v12, v3

    .line 207
    :goto_1
    array-length v13, v1

    if-ge v12, v13, :cond_2

    .line 208
    aget-byte v13, v1, v12

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v12, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    and-int/2addr v13, v6

    add-int/lit8 v14, v12, 0x2

    .line 209
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    .line 211
    new-array v15, v14, [B

    add-int/lit8 v6, v12, 0x3

    .line 212
    invoke-static {v1, v6, v15, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x3

    add-int/2addr v12, v14

    .line 218
    invoke-static {v13}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v3

    .line 219
    sget-object v6, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseTlvs :: NOT SUPPORTED STATE : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v6, v14

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 236
    :pswitch_0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 230
    :pswitch_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 225
    :pswitch_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    :pswitch_3
    const/4 v14, 0x0

    :goto_3
    move v3, v14

    const v6, 0xffff

    goto/16 :goto_1

    :cond_2
    move v14, v3

    .line 257
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v5

    goto :goto_4

    :cond_3
    move v1, v14

    .line 258
    :goto_4
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v5

    goto :goto_5

    :cond_4
    move v2, v14

    .line 259
    :goto_5
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v5

    goto :goto_6

    :cond_5
    move v3, v14

    :goto_6
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    move-object/from16 v5, p0

    .line 262
    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;

    if-eqz v1, :cond_8

    .line 263
    invoke-interface {v6, v0, v4}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 264
    invoke-interface {v6, v0, v7}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    :cond_9
    if-eqz v3, :cond_7

    .line 265
    invoke-interface {v6, v0, v11}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    :goto_8
    const-string v0, "parseSupportedFeatures :: DataPacket is too short."

    .line 150
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSmepReceiver"

    if-eqz p1, :cond_0

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data = "

    const-string v3, "com.samsung.bluetooth.device.extra.META_DATA"

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    .line 92
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 94
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq v1, v4, :cond_3

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;

    .line 102
    invoke-interface {p2, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;->connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 110
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->parseTlvs(Landroid/bluetooth/BluetoothDevice;[B)V

    :cond_3
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    iget-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 122
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 128
    iget-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->mSmepCallbacks:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->setListening(Z)V

    :cond_0
    return-void
.end method
