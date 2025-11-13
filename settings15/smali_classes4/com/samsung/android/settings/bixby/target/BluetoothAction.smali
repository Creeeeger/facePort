.class public final Lcom/samsung/android/settings/bixby/target/BluetoothAction;
.super Lcom/samsung/android/settings/bixby/target/actions/Action;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/actions/Action;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method public final doConnectAction()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->gotoBluetoothSettings()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doGetAction()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "false"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final doGetEntryListAction()Landroid/os/Bundle;
    .locals 23

    move-object/from16 v0, p0

    const-string/jumbo v1, "model_id"

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v3, "BluetoothAction"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, v0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v7, "result"

    const-string/jumbo v8, "number_of_paired_devices"

    if-nez v6, :cond_0

    :try_start_1
    const-string v0, "bt_is_off"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, -0x1

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v17, v4

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v2, v4

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v2, v4

    goto/16 :goto_15

    :cond_0
    const-string/jumbo v6, "success"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v7, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v14, 0xc

    if-eqz v12, :cond_6

    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceType()I

    move-result v15

    iget-object v10, v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v10

    iget v13, v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v13, v14, :cond_2

    :try_start_3
    iget-boolean v13, v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v16, v7

    goto/16 :goto_7

    :cond_2
    :goto_1
    const-string v13, ", deviceType : "

    const-string/jumbo v14, "type : "

    move-object/from16 v16, v7

    const/4 v7, 0x2

    if-ne v10, v7, :cond_4

    if-eq v15, v7, :cond_3

    :try_start_4
    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkHearingAidByUuid()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v17, v4

    :try_start_5
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {v7, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :goto_2
    move-object/from16 v2, v17

    goto/16 :goto_13

    :goto_3
    move-object/from16 v2, v17

    goto/16 :goto_14

    :goto_4
    move-object/from16 v2, v17

    goto/16 :goto_15

    :cond_3
    move-object/from16 v17, v4

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_4

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", BLE device"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_4

    :cond_4
    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Classic device"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    :goto_7
    move-object/from16 v7, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_6
    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "paired device cnt :: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "getDevices() :: empty"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_12

    :cond_7
    invoke-virtual {v5, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add entry : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "device_id"

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v10, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const-string/jumbo v11, "paired"

    if-ne v10, v14, :cond_8

    move-object v10, v11

    goto :goto_9

    :cond_8
    :try_start_6
    const-string/jumbo v10, "restored"

    :goto_9
    const-string v12, "bond_type"

    invoke-virtual {v9, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "0x0000"

    invoke-virtual {v9, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v12, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v12
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const-string v15, "disconnected"

    const-string v14, "connection_state"

    if-nez v12, :cond_9

    :try_start_7
    const-string v12, "cachedDevice is null"

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    goto :goto_b

    :cond_9
    iget-object v13, v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz v13, :cond_b

    move-object/from16 v18, v2

    iget v2, v13, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    move-object/from16 v19, v4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    :cond_a
    iget-object v2, v13, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteBufferToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    :cond_c
    :goto_a
    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v15, "connected"

    :cond_d
    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_b
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    sget-object v4, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const-string v12, "in_ear"

    const-string/jumbo v13, "outside"

    const-string v14, "in_open_case"

    const-string v15, "in_close_case"

    move-object/from16 v20, v1

    const-string/jumbo v1, "unknown"

    move-object/from16 v21, v12

    const-string/jumbo v12, "wearing_left_state"

    if-eqz v2, :cond_12

    move-object/from16 v22, v13

    const/4 v13, 0x3

    :try_start_8
    aget-byte v2, v2, v13

    const/4 v13, 0x1

    if-eq v2, v13, :cond_11

    const/4 v13, 0x2

    if-eq v2, v13, :cond_10

    const/4 v13, 0x3

    if-eq v2, v13, :cond_f

    const/4 v13, 0x4

    if-eq v2, v13, :cond_e

    move-object v2, v1

    goto :goto_c

    :cond_e
    move-object v2, v15

    goto :goto_c

    :cond_f
    move-object v2, v14

    goto :goto_c

    :cond_10
    move-object/from16 v2, v22

    goto :goto_c

    :cond_11
    move-object/from16 v2, v21

    :goto_c
    invoke-virtual {v9, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_12
    move-object/from16 v22, v13

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_d
    const-string/jumbo v2, "wearing_right_state"

    if-eqz v4, :cond_17

    const/4 v12, 0x3

    :try_start_9
    aget-byte v4, v4, v12

    const/4 v13, 0x1

    if-eq v4, v13, :cond_16

    const/4 v13, 0x2

    if-eq v4, v13, :cond_15

    if-eq v4, v12, :cond_14

    const/4 v12, 0x4

    if-eq v4, v12, :cond_13

    move-object v12, v1

    goto :goto_e

    :cond_13
    move-object v12, v15

    goto :goto_e

    :cond_14
    move-object v12, v14

    goto :goto_e

    :cond_15
    move-object/from16 v12, v22

    goto :goto_e

    :cond_16
    const/4 v13, 0x2

    move-object/from16 v12, v21

    :goto_e
    invoke-virtual {v9, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_17
    const/4 v13, 0x2

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_f
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->getDeviceType(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_type"

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Buds"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_FULL_NAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    if-eqz v2, :cond_18

    array-length v4, v2

    const/4 v8, 0x3

    sub-int/2addr v4, v8

    new-array v10, v4, [B

    const/4 v11, 0x0

    invoke-static {v2, v8, v10, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_18
    const/4 v11, 0x0

    :goto_10
    const-string/jumbo v2, "model_name"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object v4, v1

    :cond_19
    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "display_name"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_11

    :cond_1a
    move-object v1, v7

    :goto_11
    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v20

    const/16 v14, 0xc

    goto/16 :goto_8

    :cond_1b
    const-string/jumbo v0, "paired_devices"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_12
    const-string v0, "get_entry_list"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v2, v17

    :try_start_a
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    goto :goto_14

    :catch_b
    move-exception v0

    goto :goto_15

    :goto_13
    const-string v1, "doGetEntryListAction :: Exception"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :goto_14
    const-string v1, "doGetEntryListAction :: IllegalStateException"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_16

    :goto_15
    const-string v1, "doGetEntryListAction :: JSONException"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_16
    return-object v2
.end method

.method public final doGotoAction()Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->gotoBluetoothSettings()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSetAction()Landroid/os/Bundle;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doSetAction() :: newValue - "

    const-string v2, "BluetoothAction"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0xfa

    const/16 v5, 0x14

    const/4 v6, 0x0

    const-string v7, "fail"

    const-string/jumbo v8, "success"

    if-eqz v2, :cond_4

    if-eqz v1, :cond_0

    const-string p0, "already_on"

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    if-ge v6, v5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v1, v0, :cond_2

    :goto_1
    move-object v7, v8

    goto :goto_2

    :cond_2
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object p0, v7

    goto :goto_4

    :cond_4
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v1, :cond_5

    const-string p0, "already_off"

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_3
    if-ge v6, v5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSupportAction()Landroid/os/Bundle;
    .locals 0

    const-string/jumbo p0, "true"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doTryToConnectAction()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "bt_is_off"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string/jumbo v1, "none"

    if-nez p0, :cond_1

    const-string p0, "BluetoothAction"

    const-string v0, "cachedDevice is null, it can\'t try to connect"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_found"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "already_connected"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BluetoothAction -- doTryToConnectAction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    move-object p0, v1

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "success"

    goto :goto_1

    :cond_3
    const-string v0, "fail"

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "detail_reason"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final doTryToDisconnectAction()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "bt_is_off"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string/jumbo v1, "none"

    if-nez p0, :cond_1

    const-string p0, "BluetoothAction"

    const-string v0, "cachedDevice is null, it can\'t try to disconnect"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_found"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "already_disconnected"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BluetoothAction -- doTryToDisconnectAction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    move-object p0, v1

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "success"

    goto :goto_1

    :cond_3
    const-string v0, "fail"

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "detail_reason"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getDeviceType(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p2

    const v1, 0x7f0806ed

    const v2, 0x7f0806ef

    const v4, 0x7f080700

    const v5, 0x7f0806d4

    const v6, 0x7f080708

    const v7, 0x7f0806f5

    const v8, 0x7f0806d5

    const v9, 0x7f08070b

    const v10, 0x7f0806cf

    const v11, 0x7f080704

    const-string v13, "BluetoothAction"

    move-object/from16 v14, p0

    iget-object v14, v14, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v14, :cond_1

    const-string v0, "Bluetooth is not supported on this device"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v12, 0x7f0806e6

    goto/16 :goto_5

    :cond_1
    iget-object v14, v14, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v15, p1

    invoke-virtual {v14, v15}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v14

    if-nez v14, :cond_3

    const-string v12, "cachedDevice is null, check mfData from DB"

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    new-instance v12, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v12, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    iget-object v12, v14, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    :goto_0
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    move v12, v0

    goto/16 :goto_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v13

    const/16 v3, 0x100

    if-eq v13, v3, :cond_16

    const/16 v3, 0x200

    if-eq v13, v3, :cond_14

    const/16 v3, 0x400

    const/4 v12, 0x1

    if-eq v13, v3, :cond_c

    const/16 v3, 0x500

    if-eq v13, v3, :cond_b

    const/16 v3, 0x600

    if-eq v13, v3, :cond_8

    const/16 v3, 0x700

    if-eq v13, v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v13, 0x704

    if-ne v3, v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "GEAR FIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "GALAXY FIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v12, v10

    goto/16 :goto_5

    :cond_7
    move v12, v9

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v12, 0x680

    if-eq v3, v12, :cond_a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x640

    if-ne v0, v3, :cond_9

    goto :goto_2

    :cond_9
    move v12, v8

    goto/16 :goto_5

    :cond_a
    :goto_2
    move v12, v7

    goto/16 :goto_5

    :cond_b
    invoke-static {v0, v12}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v12

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v13, 0x43c

    if-ne v3, v13, :cond_d

    move v12, v6

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v13, 0x434

    if-ne v3, v13, :cond_e

    move v12, v5

    goto/16 :goto_5

    :cond_e
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v13, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-static {v3, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    :cond_f
    invoke-virtual {v0, v12}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_10
    move v12, v4

    goto :goto_5

    :cond_11
    if-eqz v3, :cond_12

    sget-object v12, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v3, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v12, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-static {v3, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_13
    const v12, 0x7f0806f0

    goto :goto_5

    :cond_14
    if-eqz v12, :cond_15

    iget v0, v12, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    iget-object v0, v12, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-byte v0, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    if-ne v0, v3, :cond_15

    :goto_4
    move v12, v11

    goto :goto_5

    :cond_15
    move v12, v2

    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x11c

    if-ne v0, v3, :cond_17

    goto :goto_4

    :cond_17
    move v12, v1

    goto :goto_5

    :cond_18
    const-string v0, "BtClass is null"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->semGetAppearance()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v14, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :goto_5
    if-ne v12, v11, :cond_1a

    const-string v0, "Tablet"

    return-object v0

    :cond_1a
    if-eq v12, v1, :cond_31

    const v0, 0x7f0806f4

    if-ne v12, v0, :cond_1b

    goto/16 :goto_a

    :cond_1b
    if-ne v12, v2, :cond_1c

    const-string v0, "Phone"

    return-object v0

    :cond_1c
    if-ne v12, v9, :cond_1d

    const-string v0, "Watch"

    return-object v0

    :cond_1d
    const v0, 0x7f0806f8

    if-ne v12, v0, :cond_1e

    const-string v0, "Ring"

    return-object v0

    :cond_1e
    if-ne v12, v10, :cond_1f

    const-string v0, "Band"

    return-object v0

    :cond_1f
    const v0, 0x7f0806eb

    if-eq v12, v0, :cond_30

    const v0, 0x7f0806ea

    if-ne v12, v0, :cond_20

    goto/16 :goto_9

    :cond_20
    const v0, 0x7f0806f1

    if-ne v12, v0, :cond_21

    const-string v0, "Mouse"

    return-object v0

    :cond_21
    const v0, 0x7f0806e3

    if-ne v12, v0, :cond_22

    const-string v0, "Gamepad"

    return-object v0

    :cond_22
    if-ne v12, v7, :cond_23

    const-string v0, "Printer"

    return-object v0

    :cond_23
    if-ne v12, v8, :cond_24

    const-string v0, "Camera"

    return-object v0

    :cond_24
    const v0, 0x7f080707

    if-eq v12, v0, :cond_2f

    const v0, 0x7f0806d0

    if-ne v12, v0, :cond_25

    goto :goto_8

    :cond_25
    if-ne v12, v6, :cond_26

    const-string v0, "TV"

    return-object v0

    :cond_26
    if-ne v12, v5, :cond_27

    const-string v0, "Camcoder"

    return-object v0

    :cond_27
    const v0, 0x7f0806d6

    if-ne v12, v0, :cond_28

    const-string v0, "Car"

    return-object v0

    :cond_28
    const v0, 0x7f0806dc

    if-eq v12, v0, :cond_2e

    if-eq v12, v4, :cond_2e

    const v0, 0x7f0806fb

    if-eq v12, v0, :cond_2e

    const v0, 0x7f0806cb

    if-eq v12, v0, :cond_2e

    const v0, 0x7f0806ca

    if-ne v12, v0, :cond_29

    goto :goto_7

    :cond_29
    const v0, 0x7f080701

    if-ne v12, v0, :cond_2a

    const-string v0, "Soundbar"

    return-object v0

    :cond_2a
    const v0, 0x7f0806e7

    if-eq v12, v0, :cond_2d

    const v0, 0x7f0806f0

    if-ne v12, v0, :cond_2b

    goto :goto_6

    :cond_2b
    const v0, 0x7f0806c7

    if-ne v12, v0, :cond_2c

    const-string v0, "Accessory"

    return-object v0

    :cond_2c
    const-string v0, "Default"

    return-object v0

    :cond_2d
    :goto_6
    const-string v0, "Headphone"

    return-object v0

    :cond_2e
    :goto_7
    const-string v0, "Speaker"

    return-object v0

    :cond_2f
    :goto_8
    const-string v0, "Buds"

    return-object v0

    :cond_30
    :goto_9
    const-string v0, "Keyboard"

    return-object v0

    :cond_31
    :goto_a
    const-string v0, "Computer"

    return-object v0
.end method

.method public final gotoBluetoothSettings()Landroid/os/Bundle;
    .locals 4

    const-string v0, "BluetoothAction"

    const-string v1, "gotoBluetoothSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getTaskId()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gotoBluetoothSettings() :: TargetTask is existed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bixby/target/actions/Action;->launchSettings(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo p0, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "ActivityNotFoundException :: Can not found BluetoothSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "not_supported_device"

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
