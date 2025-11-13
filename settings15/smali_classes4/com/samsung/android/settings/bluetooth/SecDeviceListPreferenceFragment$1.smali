.class public final Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

.field public final synthetic val$eventId:Ljava/lang/String;

.field public final synthetic val$screenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    iget-wide v1, v1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    iget-wide v5, v5, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanStartTime:J

    sub-long/2addr v1, v5

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    sget-boolean v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    const/4 v6, 0x0

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    const-string v7, "Button"

    iput-object v7, v5, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    sget-boolean v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    if-eqz v5, :cond_2

    sput-boolean v6, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    :cond_2
    sget-boolean v5, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    if-eqz v5, :cond_3

    sput-boolean v6, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    :cond_3
    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    iget-object v7, v7, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    sget-object v8, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v5, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    const/4 v8, 0x0

    if-nez v5, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-nez v5, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v8, 0x5

    new-array v9, v8, [I

    aput v6, v9, v6

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v11, 0x2

    aput v6, v9, v11

    const/4 v12, 0x3

    aput v6, v9, v12

    const/4 v13, 0x4

    aput v6, v9, v13

    new-array v14, v13, [I

    aput v6, v14, v6

    aput v6, v14, v10

    aput v6, v14, v11

    aput v6, v14, v12

    const/16 v15, 0xb

    new-array v15, v15, [I

    aput v6, v15, v6

    aput v6, v15, v10

    aput v6, v15, v11

    aput v6, v15, v12

    aput v6, v15, v13

    aput v6, v15, v8

    const/16 v16, 0x6

    aput v6, v15, v16

    const/16 v17, 0x7

    aput v6, v15, v17

    const/16 v18, 0x8

    aput v6, v15, v18

    const/16 v19, 0x9

    aput v6, v15, v19

    const/16 v20, 0xa

    aput v6, v15, v20

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopyForSalogging()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v3, v21

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v8, 0xc

    if-eq v4, v8, :cond_c

    aget v4, v9, v6

    add-int/2addr v4, v10

    aput v4, v9, v6

    iget v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    if-eqz v4, :cond_9

    if-eq v4, v10, :cond_8

    if-eq v4, v11, :cond_7

    if-eq v4, v12, :cond_6

    aget v4, v9, v10

    add-int/2addr v4, v10

    aput v4, v9, v10

    goto :goto_2

    :cond_6
    aget v4, v9, v13

    add-int/2addr v4, v10

    aput v4, v9, v13

    goto :goto_2

    :cond_7
    aget v4, v9, v12

    add-int/2addr v4, v10

    aput v4, v9, v12

    goto :goto_2

    :cond_8
    aget v4, v9, v11

    add-int/2addr v4, v10

    aput v4, v9, v11

    goto :goto_2

    :cond_9
    aget v4, v9, v10

    add-int/2addr v4, v10

    aput v4, v9, v10

    :goto_2
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    aget v4, v14, v12

    add-int/2addr v4, v10

    aput v4, v14, v12

    goto :goto_3

    :cond_a
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    aget v4, v14, v6

    add-int/2addr v4, v10

    aput v4, v14, v6

    goto :goto_3

    :cond_b
    aget v4, v14, v10

    add-int/2addr v4, v10

    aput v4, v14, v10

    :goto_3
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    aget v3, v15, v6

    add-int/2addr v3, v10

    aput v3, v15, v6

    goto :goto_4

    :sswitch_0
    aget v3, v15, v20

    add-int/2addr v3, v10

    aput v3, v15, v20

    goto :goto_4

    :sswitch_1
    aget v3, v15, v19

    add-int/2addr v3, v10

    aput v3, v15, v19

    goto :goto_4

    :sswitch_2
    aget v3, v15, v18

    add-int/2addr v3, v10

    aput v3, v15, v18

    goto :goto_4

    :sswitch_3
    aget v3, v15, v17

    add-int/2addr v3, v10

    aput v3, v15, v17

    goto :goto_4

    :sswitch_4
    aget v3, v15, v16

    add-int/2addr v3, v10

    aput v3, v15, v16

    goto :goto_4

    :sswitch_5
    const/4 v3, 0x5

    aget v4, v15, v3

    add-int/2addr v4, v10

    aput v4, v15, v3

    goto :goto_4

    :sswitch_6
    aget v3, v15, v13

    add-int/2addr v3, v10

    aput v3, v15, v13

    goto :goto_4

    :sswitch_7
    aget v3, v15, v12

    add-int/2addr v3, v10

    aput v3, v15, v12

    goto :goto_4

    :sswitch_8
    const/4 v3, 0x2

    aget v4, v15, v3

    add-int/2addr v4, v10

    aput v4, v15, v3

    goto :goto_4

    :sswitch_9
    aget v3, v15, v10

    add-int/2addr v3, v10

    aput v3, v15, v10

    goto :goto_4

    :sswitch_a
    aget v3, v15, v6

    add-int/2addr v3, v10

    aput v3, v15, v6

    :cond_c
    :goto_4
    const-wide/16 v3, 0x0

    const/4 v8, 0x5

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_d
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aget v3, v9, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceCount"

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Action"

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ScanDelay"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v9, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType_Unknown"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v2, v9, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType_Classic"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v9, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType_BLE"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v9, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType_Dual"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v14, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Alias"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v14, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Original"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v2, v14, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Contact"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v14, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Address"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_MISC"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_COMPUTER"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v1, v15, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_PHONE"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_NETWORKING"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_AUDIO_VIDEO"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    aget v1, v15, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_PERIPHERAL"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v16

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_IMAGING"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v17

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_WEARABLE"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_TOY"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v19

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_HEALTH"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v15, v20

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_UNCATEGORIZED"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;

    const-string v2, "Callback"

    iput-object v2, v1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanStartTime:J

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    invoke-static {v1, v0, v8, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x300 -> :sswitch_7
        0x400 -> :sswitch_6
        0x500 -> :sswitch_5
        0x600 -> :sswitch_4
        0x700 -> :sswitch_3
        0x800 -> :sswitch_2
        0x900 -> :sswitch_1
        0x1f00 -> :sswitch_0
    .end sparse-switch
.end method
