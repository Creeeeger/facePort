.class public Lcom/samsung/android/settings/bixby/target/BluetoothAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "BluetoothAction.java"


# instance fields
.field private final ACCESSORY:Ljava/lang/String;

.field private final ADDRESS:Ljava/lang/String;

.field private final BAND:Ljava/lang/String;

.field private final BOND_STATE:Ljava/lang/String;

.field private final BT_DEVICE_DB:Ljava/lang/String;

.field private final BT_GET_ONOFF:Ljava/lang/String;

.field private final BT_GOTO:Ljava/lang/String;

.field private final BT_SET_ONOFF:Ljava/lang/String;

.field private final BUDS:Ljava/lang/String;

.field private final CAMCODER:Ljava/lang/String;

.field private final CAMERA:Ljava/lang/String;

.field private final CAR:Ljava/lang/String;

.field private final CLAUSE_BONDED_RESTORED_DEVICES:Ljava/lang/String;

.field private final COMPUTER:Ljava/lang/String;

.field private final CONNECTED:Ljava/lang/String;

.field private final DEFAULT:Ljava/lang/String;

.field private final DEVICE_PAIRED:Ljava/lang/String;

.field private final DEVICE_RESTORED:Ljava/lang/String;

.field private final DISCONNECTED:Ljava/lang/String;

.field private final GAMEPAD:Ljava/lang/String;

.field private final HEADPHONE:Ljava/lang/String;

.field private final KEYBOARD:Ljava/lang/String;

.field private final MANUFACTURERDATA:Ljava/lang/String;

.field private final MANUFACTURER_TYPE_DEFAULT:I

.field private final MANUFACTURER_TYPE_OLD:I

.field private final MANUFACTURER_TYPE_SS_BREDR:I

.field private final MANUFACTURER_TYPE_SS_LE:I

.field private final MOUSE:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field private final PAIRED_DEVICES:Ljava/lang/String;

.field private final PAIRED_DEVICES_CNT:Ljava/lang/String;

.field private final PAIRED_DEVICE_BOND_STATE:Ljava/lang/String;

.field private final PAIRED_DEVICE_CONNECTION_STATE:Ljava/lang/String;

.field private final PAIRED_DEVICE_DISPLAY_NAME:Ljava/lang/String;

.field private final PAIRED_DEVICE_ID:Ljava/lang/String;

.field private final PAIRED_DEVICE_MF_MODEL_ID:Ljava/lang/String;

.field private final PAIRED_DEVICE_NAME:Ljava/lang/String;

.field private final PAIRED_DEVICE_NUMBER:Ljava/lang/String;

.field private final PAIRED_DEVICE_TYPE:Ljava/lang/String;

.field private final PAIRED_DEVICE_WEARING_STATE_LEFT:Ljava/lang/String;

.field private final PAIRED_DEVICE_WEARING_STATE_RIGHT:Ljava/lang/String;

.field private final PHONE:Ljava/lang/String;

.field private final PRINTER:Ljava/lang/String;

.field private final SOUNDBAR:Ljava/lang/String;

.field private final SPEAKER:Ljava/lang/String;

.field private final STATE_UNKNOWN:Ljava/lang/String;

.field private final TABLET:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final TV:Ljava/lang/String;

.field private final WEARING_STATE_IN_CLOSE_CASE:Ljava/lang/String;

.field private final WEARING_STATE_IN_EAR:Ljava/lang/String;

.field private final WEARING_STATE_IN_OPEN_CASE:Ljava/lang/String;

.field private final WEARING_STATE_OUTSIDE:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 42
    const-class v0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v0, "number_of_paired_devices"

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICES_CNT:Ljava/lang/String;

    const-string v0, "paired_devices"

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICES:Ljava/lang/String;

    const-string v0, "device_id"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_ID:Ljava/lang/String;

    const-string v0, "bond_type"

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_BOND_STATE:Ljava/lang/String;

    const-string v0, "model_id"

    .line 48
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_MF_MODEL_ID:Ljava/lang/String;

    const-string v0, "connection_state"

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_CONNECTION_STATE:Ljava/lang/String;

    const-string v0, "wearing_left_state"

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_WEARING_STATE_LEFT:Ljava/lang/String;

    const-string v0, "wearing_right_state"

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_WEARING_STATE_RIGHT:Ljava/lang/String;

    const-string v0, "device_type"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "model_name"

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_NAME:Ljava/lang/String;

    const-string v0, "model_number"

    .line 54
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_NUMBER:Ljava/lang/String;

    const-string v0, "display_name"

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PAIRED_DEVICE_DISPLAY_NAME:Ljava/lang/String;

    const-string v0, "getOnOffBluetooth"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BT_GET_ONOFF:Ljava/lang/String;

    const-string v0, "setOnOffBluetooth"

    .line 59
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BT_SET_ONOFF:Ljava/lang/String;

    const-string v0, "gotoBluetoothSetting"

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BT_GOTO:Ljava/lang/String;

    const-string v0, "Tablet"

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TABLET:Ljava/lang/String;

    const-string v0, "Computer"

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->COMPUTER:Ljava/lang/String;

    const-string v0, "Phone"

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PHONE:Ljava/lang/String;

    const-string v0, "Band"

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BAND:Ljava/lang/String;

    const-string v0, "Keyboard"

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->KEYBOARD:Ljava/lang/String;

    const-string v0, "Mouse"

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MOUSE:Ljava/lang/String;

    const-string v0, "Gamepad"

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->GAMEPAD:Ljava/lang/String;

    const-string v0, "Printer"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->PRINTER:Ljava/lang/String;

    const-string v0, "Camera"

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->CAMERA:Ljava/lang/String;

    const-string v0, "Buds"

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BUDS:Ljava/lang/String;

    const-string v0, "TV"

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TV:Ljava/lang/String;

    const-string v0, "Camcoder"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->CAMCODER:Ljava/lang/String;

    const-string v0, "Car"

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->CAR:Ljava/lang/String;

    const-string v0, "Speaker"

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->SPEAKER:Ljava/lang/String;

    const-string v0, "Soundbar"

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->SOUNDBAR:Ljava/lang/String;

    const-string v0, "Headphone"

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->HEADPHONE:Ljava/lang/String;

    const-string v0, "Accessory"

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->ACCESSORY:Ljava/lang/String;

    const-string v0, "Default"

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->DEFAULT:Ljava/lang/String;

    const-string v0, "unknown"

    .line 82
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->STATE_UNKNOWN:Ljava/lang/String;

    const-string v0, "in_ear"

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->WEARING_STATE_IN_EAR:Ljava/lang/String;

    const-string v0, "outside"

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->WEARING_STATE_OUTSIDE:Ljava/lang/String;

    const-string v0, "in_open_case"

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->WEARING_STATE_IN_OPEN_CASE:Ljava/lang/String;

    const-string v0, "in_close_case"

    .line 86
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->WEARING_STATE_IN_CLOSE_CASE:Ljava/lang/String;

    const-string v0, "disconnected"

    .line 88
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->DISCONNECTED:Ljava/lang/String;

    const-string v0, "connected"

    .line 89
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->CONNECTED:Ljava/lang/String;

    const-string v0, "paired"

    .line 91
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->DEVICE_PAIRED:Ljava/lang/String;

    const-string v0, "restored"

    .line 92
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->DEVICE_RESTORED:Ljava/lang/String;

    const-string v0, "bond_state == 1 OR bond_state == 2"

    .line 94
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->CLAUSE_BONDED_RESTORED_DEVICES:Ljava/lang/String;

    const-string v0, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BT_DEVICE_DB:Ljava/lang/String;

    const-string v0, "name"

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->NAME:Ljava/lang/String;

    const-string v0, "address"

    .line 97
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->ADDRESS:Ljava/lang/String;

    const-string v0, "timestamp"

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "bond_state"

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->BOND_STATE:Ljava/lang/String;

    const-string v0, "manufacturerdata"

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MANUFACTURERDATA:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MANUFACTURER_TYPE_DEFAULT:I

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MANUFACTURER_TYPE_OLD:I

    const/4 v0, 0x2

    .line 104
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MANUFACTURER_TYPE_SS_BREDR:I

    const/4 v0, 0x3

    .line 105
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->MANUFACTURER_TYPE_SS_LE:I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mTaskId:Ljava/lang/Integer;

    .line 112
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method private getWearingState(B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "in_close_case"

    return-object p0

    :cond_1
    const-string p0, "in_open_case"

    return-object p0

    :cond_2
    const-string p0, "outside"

    return-object p0

    :cond_3
    const-string p0, "in_ear"

    return-object p0
.end method

.method private waitForState(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/16 v2, 0xfa

    .line 417
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetEntryListAction()Landroid/os/Bundle;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "model_id"

    .line 164
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 166
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v3, 0x0

    .line 170
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 171
    iget-object v4, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "result"

    const-string v11, "number_of_paired_devices"

    if-nez v4, :cond_0

    :try_start_1
    const-string v0, "bt_is_off"

    .line 172
    invoke-virtual {v10, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, -0x1

    .line 173
    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    move-object/from16 v19, v2

    goto/16 :goto_9

    :cond_0
    const-string v4, "success"

    .line 175
    invoke-virtual {v10, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v4, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "bond_state == 1 OR bond_state == 2"

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 180
    iget-object v0, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v4, "getDevices() :: query return null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 181
    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 183
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 186
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "address"

    .line 187
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "bond_state"

    .line 188
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "name"

    .line 189
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "manufacturerdata"

    .line 190
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, ""

    .line 193
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_e

    .line 194
    iget-object v11, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 195
    iget-object v12, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Add entry : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "device_id"

    .line 197
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "paired"

    const/4 v15, 0x2

    if-ne v13, v15, :cond_2

    move-object v9, v14

    goto :goto_2

    .line 201
    :cond_2
    :try_start_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_3

    const-string v9, "restored"

    :cond_3
    :goto_2
    const-string v13, "bond_type"

    .line 204
    invoke-virtual {v12, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "0x0000"

    .line 206
    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    iget-object v13, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, "disconnected"

    move/from16 v16, v5

    const-string v5, "connection_state"

    move/from16 v17, v6

    if-nez v13, :cond_4

    .line 210
    :try_start_3
    iget-object v13, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v6, "cachedDevice is null"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v12, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v19, v2

    goto :goto_5

    .line 213
    :cond_4
    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object/from16 v18, v15

    .line 216
    invoke-virtual {v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v15
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v2

    const/4 v2, 0x3

    if-eq v15, v2, :cond_5

    .line 217
    :try_start_4
    invoke-virtual {v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v2

    const/4 v15, 0x2

    if-ne v2, v15, :cond_7

    .line 218
    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v2

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    invoke-static {v2, v15}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteBufferToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v18, v15

    .line 221
    :cond_7
    :goto_3
    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v15, "connected"

    goto :goto_4

    :cond_8
    move-object/from16 v15, v18

    :goto_4
    invoke-virtual {v12, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :goto_5
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    .line 225
    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v5
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "wearing_left_state"

    const-string v13, "unknown"

    if-eqz v2, :cond_9

    const/4 v15, 0x3

    .line 228
    :try_start_5
    aget-byte v2, v2, v15

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->getWearingState(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 230
    :cond_9
    invoke-virtual {v12, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    const-string v2, "wearing_right_state"

    if-eqz v5, :cond_a

    const/4 v6, 0x3

    .line 233
    :try_start_6
    aget-byte v5, v5, v6

    invoke-direct {v1, v5}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->getWearingState(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 235
    :cond_a
    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :goto_7
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v2

    const-string v5, "device_type"

    .line 239
    invoke-virtual {v1, v11, v2}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->getDeviceType(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 244
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v5

    :cond_b
    const-string v6, "model_name"

    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object v2, v13

    :cond_c
    invoke-virtual {v12, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "display_name"

    .line 248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    move-object v13, v5

    :goto_8
    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 251
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v2, v19

    goto/16 :goto_1

    :cond_e
    move-object/from16 v19, v2

    .line 254
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    const-string v0, "paired_devices"

    .line 255
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    :goto_9
    const-string v0, "get_entry_list"

    .line 259
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v4, v19

    :try_start_7
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_10

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v4, v2

    .line 267
    :goto_a
    :try_start_8
    iget-object v1, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v2, "doGetEntryListAction :: Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_10

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v4, v2

    .line 264
    :goto_b
    iget-object v1, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v2, "doGetEntryListAction :: IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    if-eqz v3, :cond_10

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v4, v2

    .line 261
    :goto_c
    iget-object v1, v1, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v2, "doGetEntryListAction :: JSONException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_10

    .line 271
    :goto_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_10
    return-object v4

    :goto_e
    if-eqz v3, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_11
    throw v0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->gotoBluetoothSettings()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "true"

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "success"

    const-string v3, "fail"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    const-string p1, "already_on"

    goto :goto_2

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const/16 p1, 0xc

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->waitForState(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v3

    :cond_2
    :goto_1
    move-object p1, v2

    goto :goto_2

    :cond_3
    const-string v1, "false"

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    const-string p1, "already_off"

    goto :goto_2

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const/16 p1, 0xa

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->waitForState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 155
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bluetooth_connect"

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "true"

    if-eqz p1, :cond_1

    .line 375
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d6b4

    if-lt p1, v1, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "false"

    .line 378
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 382
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doTryToConnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "bt_is_off"

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string v0, "none"

    if-nez p1, :cond_1

    .line 299
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string p1, "cachedDevice is null, it can\'t try to connect"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "not_found"

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "already_connected"

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 304
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    move-object p0, v0

    .line 307
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "success"

    goto :goto_1

    :cond_3
    const-string p1, "fail"

    .line 309
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 310
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "detail_reason"

    .line 311
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public doTryToDisconnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "bt_is_off"

    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string v0, "none"

    if-nez p1, :cond_1

    .line 327
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string p1, "cachedDevice is null, it can\'t try to disconnect"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "not_found"

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "already_disconnected"

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    move-object p0, v0

    .line 335
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "success"

    goto :goto_1

    :cond_3
    const-string p1, "fail"

    .line 337
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 338
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "detail_reason"

    .line 339
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceDrawable(Landroid/bluetooth/BluetoothDevice;[B)I
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 479
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string p1, "Bluetooth is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    return p0

    .line 483
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 486
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v2, "cachedDevice is null, check mfData from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 488
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v1, p2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    move-result-object v1

    :goto_0
    const/4 p2, 0x2

    if-eqz v1, :cond_4

    .line 494
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 495
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 496
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v2

    if-eqz v2, :cond_4

    return v2

    .line 502
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 504
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p0

    const/16 v3, 0x100

    if-eq p0, v3, :cond_16

    const/16 v3, 0x200

    if-eq p0, v3, :cond_14

    const/16 p2, 0x400

    if-eq p0, p2, :cond_c

    const/16 p2, 0x500

    if-eq p0, p2, :cond_b

    const/16 p2, 0x600

    if-eq p0, p2, :cond_8

    const/16 p2, 0x700

    if-eq p0, p2, :cond_5

    goto :goto_2

    .line 519
    :cond_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p2, 0x704

    if-ne p0, p2, :cond_e

    .line 520
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "GEAR FIT"

    .line 521
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "GALAXY FIT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 522
    :cond_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 524
    :cond_7
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 531
    :cond_8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x680

    if-eq p0, p1, :cond_a

    .line 532
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x640

    if-ne p0, p1, :cond_9

    goto :goto_1

    .line 535
    :cond_9
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return p0

    .line 533
    :cond_a
    :goto_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return p0

    .line 529
    :cond_b
    invoke-static {v2}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p0

    return p0

    .line 538
    :cond_c
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p2, 0x43c

    if-ne p0, p2, :cond_d

    .line 539
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    .line 540
    :cond_d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p2, 0x434

    if-ne p0, p2, :cond_e

    .line 541
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return p0

    .line 548
    :cond_e
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 549
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    :cond_f
    const/4 p2, 0x1

    .line 550
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 551
    :cond_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    :cond_11
    if-eqz p0, :cond_12

    .line 553
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 554
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 555
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    :cond_12
    const/4 p0, 0x0

    .line 556
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 557
    :cond_13
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return p0

    :cond_14
    if-eqz v1, :cond_15

    .line 512
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result p0

    if-ne p0, p2, :cond_15

    .line 513
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceCategory()B

    move-result p0

    if-ne p0, p2, :cond_15

    .line 514
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 516
    :cond_15
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    .line 506
    :cond_16
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x11c

    if-ne p0, p1, :cond_17

    .line 507
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 509
    :cond_17
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 560
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string p2, "BtClass is null"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-eqz v0, :cond_1a

    .line 564
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAppearance()I

    move-result p0

    if-eqz p0, :cond_1a

    .line 566
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result p0

    if-eqz p0, :cond_1a

    return p0

    .line 573
    :cond_1a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    return p0
.end method

.method public getDeviceType(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;
    .locals 0

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->getDeviceDrawable(Landroid/bluetooth/BluetoothDevice;[B)I

    move-result p0

    .line 426
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    if-ne p0, p1, :cond_0

    const-string p0, "Tablet"

    return-object p0

    .line 428
    :cond_0
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    if-eq p0, p1, :cond_15

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_pc:I

    if-ne p0, p1, :cond_1

    goto/16 :goto_4

    .line 431
    :cond_1
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    if-ne p0, p1, :cond_2

    const-string p0, "Phone"

    return-object p0

    .line 433
    :cond_2
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    if-ne p0, p1, :cond_3

    const-string p0, "Band"

    return-object p0

    .line 435
    :cond_3
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    if-eq p0, p1, :cond_14

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_input_combo:I

    if-ne p0, p1, :cond_4

    goto/16 :goto_3

    .line 438
    :cond_4
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    if-ne p0, p1, :cond_5

    const-string p0, "Mouse"

    return-object p0

    .line 440
    :cond_5
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    if-ne p0, p1, :cond_6

    const-string p0, "Gamepad"

    return-object p0

    .line 442
    :cond_6
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    if-ne p0, p1, :cond_7

    const-string p0, "Printer"

    return-object p0

    .line 444
    :cond_7
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    if-ne p0, p1, :cond_8

    const-string p0, "Camera"

    return-object p0

    .line 446
    :cond_8
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    if-eq p0, p1, :cond_13

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_bean:I

    if-ne p0, p1, :cond_9

    goto :goto_2

    .line 449
    :cond_9
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    if-ne p0, p1, :cond_a

    const-string p0, "TV"

    return-object p0

    .line 451
    :cond_a
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    if-ne p0, p1, :cond_b

    const-string p0, "Camcoder"

    return-object p0

    .line 453
    :cond_b
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_car:I

    if-ne p0, p1, :cond_c

    const-string p0, "Car"

    return-object p0

    .line 455
    :cond_c
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    if-eq p0, p1, :cond_12

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    if-eq p0, p1, :cond_12

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_samsung_ai_speaker:I

    if-eq p0, p1, :cond_12

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker_galaxy_home_mini:I

    if-eq p0, p1, :cond_12

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker:I

    if-ne p0, p1, :cond_d

    goto :goto_1

    .line 461
    :cond_d
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    if-ne p0, p1, :cond_e

    const-string p0, "Soundbar"

    return-object p0

    .line 463
    :cond_e
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    if-eq p0, p1, :cond_11

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    if-ne p0, p1, :cond_f

    goto :goto_0

    .line 466
    :cond_f
    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    if-ne p0, p1, :cond_10

    const-string p0, "Accessory"

    return-object p0

    :cond_10
    const-string p0, "Default"

    return-object p0

    :cond_11
    :goto_0
    const-string p0, "Headphone"

    return-object p0

    :cond_12
    :goto_1
    const-string p0, "Speaker"

    return-object p0

    :cond_13
    :goto_2
    const-string p0, "Buds"

    return-object p0

    :cond_14
    :goto_3
    const-string p0, "Keyboard"

    return-object p0

    :cond_15
    :goto_4
    const-string p0, "Computer"

    return-object p0
.end method

.method public gotoBluetoothSettings()Landroid/os/Bundle;
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v1, "gotoBluetoothSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$BluetoothSettingsActivity"

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mTaskId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v2, "gotoBluetoothSettings() :: TargetTask is existed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 359
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v0, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 365
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v1, "ActivityNotFoundException :: Can not found BluetoothSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_supported_device"

    .line 369
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
