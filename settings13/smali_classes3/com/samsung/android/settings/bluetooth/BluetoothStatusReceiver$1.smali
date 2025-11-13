.class Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "pair"

    const-string v3, ""

    .line 213
    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "BluetoothStatusReceiver"

    if-eq v4, v6, :cond_11

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v4, v10, :cond_f

    const/4 v12, 0x4

    if-eq v4, v11, :cond_d

    if-eq v4, v12, :cond_0

    goto/16 :goto_5

    .line 266
    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v4, "command"

    .line 267
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "capability"

    .line 275
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "commandId"

    .line 276
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v9, "commandUuid"

    .line 277
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "componentId"

    .line 278
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 280
    iget-object v13, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v13}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->getCurrentCmdId()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "startScan"

    if-eqz v13, :cond_1

    .line 282
    :try_start_2
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 283
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "HC is busy, so skip cmd"

    .line 284
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "disconnect"

    const-string v6, "connect"

    const-string v11, "unpair"

    if-nez v13, :cond_3

    :try_start_3
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 290
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v13, "arguments"

    .line 291
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 292
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v13, "value"

    .line 293
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v13, "address"

    .line 295
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "_"

    const-string v5, ":"

    invoke-virtual {v4, v13, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    iget-object v5, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 297
    iget-object v13, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v13}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDeviceManager(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fputmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 298
    iget-object v5, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_4

    .line 299
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v10}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "HC isn\'t found"

    .line 300
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 303
    :cond_4
    iget-object v5, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "cancel discovery before operating cmd"

    .line 304
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v5, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 310
    :cond_5
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "capability : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", commandId : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commandUuid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", componentId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 312
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v9, 0x5

    const/4 v12, 0x6

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "stopScan"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_2
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v5, v9

    goto :goto_3

    :sswitch_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v5, v10

    goto :goto_3

    :sswitch_4
    const-string v2, "getPairedList"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v5, v12

    goto :goto_3

    :sswitch_5
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_6
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v0

    :goto_3
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string v0, "try to get paired list"

    .line 380
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendPairedList(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 369
    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "try to disconnect"

    .line 370
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_5

    :cond_7
    const-string v0, "it\'s already disconnected"

    .line 374
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v12}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 358
    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_8

    const-string v0, "try to unpair"

    .line 359
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpairLegacy()V

    goto/16 :goto_5

    :cond_8
    const-string v0, "it\'s already unpaired"

    .line 363
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v8, v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 347
    :pswitch_3
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "try to connect"

    .line 348
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    goto/16 :goto_5

    :cond_9
    const-string v0, "it\'s already connected"

    .line 352
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v3, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 336
    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_a

    const-string v0, "try to pair"

    .line 337
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    goto/16 :goto_5

    :cond_a
    const-string v0, "it\'s already paired"

    .line 341
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v8, v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 325
    :pswitch_5
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "cancel discovery"

    .line 326
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    goto/16 :goto_5

    :cond_b
    const-string v0, "it\'s already stopped"

    .line 330
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v8, v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 314
    :pswitch_6
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "it\'s already scanning"

    .line 315
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v8, v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_c
    const-string v0, "start scan"

    .line 318
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    move-object v3, v8

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    .line 388
    :goto_4
    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "MSG_HC_DO_ACTION :: JSONException"

    .line 389
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 250
    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->getHomeControllerService()Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v2

    if-nez v2, :cond_e

    .line 251
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    .line 252
    iput v3, v2, Landroid/os/Message;->what:I

    .line 253
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    .line 256
    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$sfputmHC_starting(Z)V

    .line 257
    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->getHomeControllerService()Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fputmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;)V

    .line 258
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x4

    .line 259
    iput v3, v2, Landroid/os/Message;->what:I

    .line 260
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 232
    :cond_f
    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 233
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "starting BluetoothHomeControllerService from receiver"

    .line 234
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    .line 238
    iput v3, v2, Landroid/os/Message;->what:I

    .line 239
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 242
    :cond_10
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 243
    iput v10, v2, Landroid/os/Message;->what:I

    .line 244
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_11
    const-string v2, "mHandler :: DEVICE_CONNECTION"

    .line 215
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "is_start_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "mf_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 221
    iget-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    move-result-object v4

    if-nez v4, :cond_12

    if-eqz v0, :cond_12

    .line 222
    iget-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 225
    :cond_12
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithLaunchGM(Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_13
    const-string v0, "mHandler :: cachedBluetoothDevice is not setted."

    .line 227
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7eeb0201 -> :sswitch_6
        -0x3216830d -> :sswitch_5
        -0x27cf26d3 -> :sswitch_4
        0x3462da -> :sswitch_3
        0x1f9d589c -> :sswitch_2
        0x38b478ea -> :sswitch_1
        0x6635719f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
