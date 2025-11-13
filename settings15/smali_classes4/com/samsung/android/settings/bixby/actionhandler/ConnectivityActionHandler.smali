.class public final Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;
.super Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;


# instance fields
.field public mParamBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v24, "bixby.settingsApp.SetOnOff_Hotspot"

    const-string v25, "bixby.settingsApp.Goto_HotspotSetting"

    const-string v0, "bixby.settingsApp.GetOnOff_Wifi"

    const-string v1, "bixby.settingsApp.SetOnOff_Wifi"

    const-string v2, "bixby.settingsApp.Disable_Wifi"

    const-string v3, "bixby.settingsApp.Connect_Wifi"

    const-string v4, "bixby.settingsApp.Goto_WifiSetting"

    const-string v5, "bixby.settingsApp.Available_WifiQRCode"

    const-string v6, "bixby.settingsApp.Goto_WifiQRCode"

    const-string v7, "bixby.settingsApp.Goto_WifiP2pSetting"

    const-string v8, "bixby.settingsApp.GetOnOff_Bluetooth"

    const-string v9, "bixby.settingsApp.SetOnOff_Bluetooth"

    const-string v10, "bixby.settingsApp.Goto_BluetoothSetting"

    const-string v11, "bixby.settingsApp.Connect_Bluetooth"

    const-string v12, "bixby.settingsApp.GetList_Bluetooth"

    const-string v13, "bixby.settingsApp.TryToConnect_Bluetooth"

    const-string v14, "bixby.settingsApp.TryToDisconnect_Bluetooth"

    const-string v15, "bixby.settingsApp.GetOnOff_MusicShare"

    const-string v16, "bixby.settingsApp.SetOnOff_MusicShare"

    const-string v17, "bixby.settingsApp.Goto_MusicShareSetting"

    const-string v18, "bixby.settingsApp.MusicShareAll"

    const-string v19, "bixby.settingsApp.GetOnOff_NFC"

    const-string v20, "bixby.settingsApp.SetOnOff_NFC"

    const-string v21, "bixby.settingsApp.Goto_NFCSetting"

    const-string v22, "bixby.settingsApp.ChangeMode_NFC"

    const-string v23, "bixby.settingsApp.GetOnOff_Hotspot"

    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bixby.settingsApp.Goto_NFCSetting"

    const-string v3, "bixby.settingsApp.SetOnOff_NFC"

    const-string v4, "bixby.settingsApp.GetOnOff_NFC"

    const-string v5, "bixby.settingsApp.MusicShareAll"

    const-string v6, "bixby.settingsApp.Goto_MusicShareSetting"

    const-string v7, "bixby.settingsApp.SetOnOff_MusicShare"

    const-string v8, "bixby.settingsApp.GetOnOff_MusicShare"

    const-string v9, "bixby.settingsApp.Connect_Bluetooth"

    const-string v10, "bixby.settingsApp.Goto_BluetoothSetting"

    const-string v11, "bixby.settingsApp.SetOnOff_Bluetooth"

    const-string v12, "bixby.settingsApp.Goto_WifiP2pSetting"

    const-string v13, "bixby.settingsApp.Connect_Wifi"

    const-string v14, "bixby.settingsApp.Goto_WifiSetting"

    const-string v15, "bixby.settingsApp.Disable_Wifi"

    const-string v0, "bixby.settingsApp.SetOnOff_Wifi"

    move-object/from16 v16, v2

    const-string v2, "bixby.settingsApp.GetOnOff_Wifi"

    const/16 v17, 0x0

    move-object/from16 v18, v3

    const-string v3, "bixby.settingsApp.TryToDisconnect_Bluetooth"

    move-object/from16 v19, v3

    const-string v3, "bixby.settingsApp.TryToConnect_Bluetooth"

    move-object/from16 v20, v3

    const-string v3, "bixby.settingsApp.GetList_Bluetooth"

    move-object/from16 v21, v3

    const-string v3, "bixby.settingsApp.GetOnOff_Bluetooth"

    const/16 v22, 0x1

    move-object/from16 v23, v4

    iget-boolean v4, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mIsCheckSupport:Z

    move-object/from16 v24, v5

    const-string v5, "false"

    move-object/from16 v25, v5

    const-string/jumbo v5, "true"

    move-object/from16 v26, v5

    const-string/jumbo v5, "result"

    move-object/from16 v27, v5

    const-string v5, "ConnectivityActionHandler"

    const-string v28, "hotspot"

    const-string/jumbo v29, "music_share"

    const-string/jumbo v30, "nfc"

    if-eqz v4, :cond_d

    iget-object v1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v31, v6

    const-string v6, "isSupported, actionName: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v2, p0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object/from16 v4, v24

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    move-object/from16 v6, v23

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "bixby.settingsApp.ChangeMode_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "bixby.settingsApp.GetOnOff_Hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "bixby.settingsApp.SetOnOff_Hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "bixby.settingsApp.Goto_HotspotSetting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    :goto_1
    const-string v28, "bluetooth_connect"

    :cond_8
    :goto_2
    move-object/from16 v0, v28

    goto :goto_5

    :cond_9
    :goto_3
    move-object/from16 v0, v30

    goto :goto_5

    :cond_a
    :goto_4
    move-object/from16 v0, v29

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "supported"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/ActionCommand;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/bixby/ActionCommand;

    move-result-object v1

    iget-object v4, v2, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/settings/bixby/ActionCommand;->execute(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    move/from16 v17, v22

    goto :goto_7

    :cond_b
    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move-object/from16 v2, p0

    :goto_7
    iget-object v0, v2, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    move-object/from16 v32, v25

    move-object/from16 v33, v26

    move-object/from16 v34, v27

    move-object/from16 v25, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v15

    move-object/from16 v15, p0

    move-object/from16 v45, v6

    move-object v6, v0

    move-object/from16 v0, v45

    move-object/from16 v46, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v46

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v26, v2

    const-string v2, "executeAction, actionName: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v15, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;->getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    move-result-object v4

    const/16 v27, 0x0

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->bixbyClientTaskId:Ljava/lang/Integer;

    goto :goto_8

    :cond_e
    move-object/from16 v4, v27

    :goto_8
    if-eqz v4, :cond_f

    move-object/from16 v31, v5

    iget-object v5, v15, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    move-object/from16 v35, v2

    const-string/jumbo v2, "targetTaskId"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_f
    move-object/from16 v35, v2

    move-object/from16 v31, v5

    :goto_9
    iget-object v2, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "change"

    const-string v5, "get_entry_list"

    const-string v36, "connect"

    move-object/from16 v37, v4

    const-string/jumbo v4, "wifiQrcode"

    const-string/jumbo v38, "set"

    const-string/jumbo v39, "wifiSettings"

    const-string v40, "get"

    const-string v41, "goto"

    const-string v42, "bluetooth"

    const/16 v43, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v44

    sparse-switch v44, :sswitch_data_0

    :goto_a
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    goto/16 :goto_c

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    const/16 v43, 0x19

    goto :goto_a

    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    const/16 v43, 0x18

    goto :goto_a

    :sswitch_2
    const-string v0, "bixby.settingsApp.Available_WifiQRCode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    const/16 v43, 0x17

    goto :goto_a

    :sswitch_3
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    const/16 v43, 0x16

    goto :goto_a

    :sswitch_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    const/16 v43, 0x15

    goto :goto_a

    :sswitch_5
    const-string v0, "bixby.settingsApp.GetOnOff_Hotspot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    const/16 v43, 0x14

    goto :goto_a

    :sswitch_6
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    const/16 v43, 0x13

    goto :goto_a

    :sswitch_7
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_a

    :cond_17
    const/16 v43, 0x12

    goto :goto_a

    :sswitch_8
    const-string v0, "bixby.settingsApp.Goto_HotspotSetting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    const/16 v43, 0x11

    goto :goto_a

    :sswitch_9
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_a

    :cond_19
    const/16 v43, 0x10

    goto :goto_a

    :sswitch_a
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_a

    :cond_1a
    const/16 v43, 0xf

    goto :goto_a

    :sswitch_b
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_a

    :cond_1b
    const/16 v43, 0xe

    goto/16 :goto_a

    :sswitch_c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_a

    :cond_1c
    const/16 v43, 0xd

    goto/16 :goto_a

    :sswitch_d
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_a

    :cond_1d
    const/16 v43, 0xc

    goto/16 :goto_a

    :sswitch_e
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_a

    :cond_1e
    const/16 v43, 0xb

    goto/16 :goto_a

    :sswitch_f
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_a

    :cond_1f
    const/16 v43, 0xa

    goto/16 :goto_a

    :sswitch_10
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_a

    :cond_20
    const/16 v43, 0x9

    goto/16 :goto_a

    :sswitch_11
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_b

    :cond_21
    const/16 v43, 0x8

    :goto_b
    move-object/from16 v6, v20

    goto/16 :goto_c

    :sswitch_12
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_c

    :cond_22
    const/16 v43, 0x7

    goto/16 :goto_c

    :sswitch_13
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v0, v21

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_c

    :cond_23
    const/16 v43, 0x6

    goto/16 :goto_c

    :sswitch_14
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    const-string v7, "bixby.settingsApp.Goto_WifiQRCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_c

    :cond_24
    const/16 v43, 0x5

    goto :goto_c

    :sswitch_15
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    const-string v7, "bixby.settingsApp.SetOnOff_Hotspot"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_c

    :cond_25
    const/16 v43, 0x4

    goto :goto_c

    :sswitch_16
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    move-object/from16 v7, v23

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_c

    :cond_26
    const/16 v43, 0x3

    goto :goto_c

    :sswitch_17
    move-object/from16 v7, v18

    move-object/from16 v6, v20

    move-object/from16 v0, v21

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_c

    :cond_27
    const/16 v43, 0x2

    goto :goto_c

    :sswitch_18
    move-object/from16 v7, v16

    move-object/from16 v6, v20

    move-object/from16 v0, v21

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_c

    :cond_28
    move/from16 v43, v22

    goto :goto_c

    :sswitch_19
    move-object/from16 v6, v20

    move-object/from16 v0, v21

    const-string v7, "bixby.settingsApp.ChangeMode_NFC"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_c

    :cond_29
    move/from16 v43, v17

    :goto_c
    packed-switch v43, :pswitch_data_0

    move-object/from16 v2, v27

    move-object v4, v2

    goto/16 :goto_14

    :pswitch_0
    move-object/from16 v4, v40

    :goto_d
    move-object/from16 v2, v42

    goto/16 :goto_14

    :pswitch_1
    move-object/from16 v2, v29

    :goto_e
    move-object/from16 v4, v40

    goto/16 :goto_14

    :pswitch_2
    const-string v2, "available"

    move-object/from16 v45, v4

    move-object v4, v2

    move-object/from16 v2, v45

    goto/16 :goto_14

    :pswitch_3
    move-object/from16 v2, v30

    :goto_f
    move-object/from16 v4, v41

    goto/16 :goto_14

    :pswitch_4
    move-object/from16 v4, v36

    goto :goto_d

    :pswitch_5
    move-object/from16 v2, v28

    goto :goto_e

    :pswitch_6
    move-object/from16 v4, v36

    :goto_10
    move-object/from16 v2, v39

    goto/16 :goto_14

    :pswitch_7
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v4, v38

    goto :goto_10

    :goto_11
    :pswitch_8
    move-object/from16 v2, v28

    goto :goto_f

    :pswitch_9
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v2, v29

    :goto_12
    move-object/from16 v4, v38

    goto/16 :goto_14

    :pswitch_a
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v2, v30

    goto :goto_12

    :pswitch_b
    const-string/jumbo v28, "wifidirect"

    goto :goto_11

    :pswitch_c
    move-object/from16 v2, v29

    goto :goto_f

    :pswitch_d
    move-object v4, v5

    goto :goto_d

    :pswitch_e
    move-object/from16 v2, v39

    goto :goto_e

    :pswitch_f
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v2, v29

    :goto_13
    move-object/from16 v4, v37

    goto :goto_14

    :pswitch_10
    move-object/from16 v2, v39

    goto :goto_f

    :pswitch_11
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setDeviceId(Landroid/os/Bundle;)V

    const-string/jumbo v4, "try_to_disconnect"

    goto :goto_d

    :pswitch_12
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setDeviceId(Landroid/os/Bundle;)V

    const-string/jumbo v4, "try_to_connect"

    goto :goto_d

    :pswitch_13
    move-object/from16 v4, v41

    goto :goto_d

    :pswitch_14
    iget-object v2, v15, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "value"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_f

    :pswitch_15
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v2, v28

    goto :goto_12

    :pswitch_16
    move-object/from16 v2, v30

    goto :goto_e

    :pswitch_17
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v4, v38

    goto/16 :goto_d

    :pswitch_18
    const-string v4, "disable"

    goto :goto_10

    :pswitch_19
    move-object/from16 v2, v35

    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->setEnabled(Landroid/os/Bundle;)V

    move-object/from16 v2, v30

    goto :goto_13

    :goto_14
    iget-object v7, v15, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/bixby/ActionCommand;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/bixby/ActionCommand;

    move-result-object v7

    iget-object v8, v15, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v4, v8, v2}, Lcom/samsung/android/settings/bixby/ActionCommand;->execute(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    move-object/from16 v4, v34

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "detail_reason"

    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :goto_15
    move/from16 v17, v9

    goto :goto_16

    :sswitch_1a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_15

    :cond_2a
    const/16 v17, 0x3

    goto :goto_16

    :sswitch_1b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_15

    :cond_2b
    const/16 v17, 0x2

    goto :goto_16

    :sswitch_1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_15

    :cond_2c
    move/from16 v17, v22

    goto :goto_16

    :sswitch_1d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_15

    :cond_2d
    :goto_16
    packed-switch v17, :pswitch_data_1

    goto :goto_17

    :pswitch_1a
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v7, "success"

    :cond_2e
    :goto_17
    move-object/from16 v2, v27

    goto :goto_18

    :cond_2f
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v7, "fail"

    goto :goto_17

    :pswitch_1b
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_1c
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_17

    :pswitch_1d
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_17

    :goto_18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    :catch_0
    move-exception v0

    const-string v4, "getJSONResult() Failed / actionName : "

    const-string v5, " / result : "

    const-string v6, " / reason : "

    invoke-static {v4, v1, v5, v7, v6}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_19
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b2391ab -> :sswitch_19
        -0x6f5daebe -> :sswitch_18
        -0x4e59060d -> :sswitch_17
        -0x41cdcbc4 -> :sswitch_16
        -0x2c6a1cac -> :sswitch_15
        -0x265ae357 -> :sswitch_14
        -0x25a69318 -> :sswitch_13
        -0x25090de7 -> :sswitch_12
        -0x1cc759f5 -> :sswitch_11
        -0x1814236b -> :sswitch_10
        -0x84015cf -> :sswitch_f
        0x818f2a4 -> :sswitch_e
        0x846a3cd -> :sswitch_d
        0xee99bd0 -> :sswitch_c
        0x1252431d -> :sswitch_b
        0x1a85f4b0 -> :sswitch_a
        0x1e0e3215 -> :sswitch_9
        0x270ceb27 -> :sswitch_8
        0x363d40b0 -> :sswitch_7
        0x3d7b6c80 -> :sswitch_6
        0x40bf7ce0 -> :sswitch_5
        0x447bb023 -> :sswitch_4
        0x6238f7cb -> :sswitch_3
        0x77044f6f -> :sswitch_2
        0x7a119d09 -> :sswitch_1
        0x7ad0607f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x25090de7 -> :sswitch_1d
        -0x1cc759f5 -> :sswitch_1c
        0x846a3cd -> :sswitch_1b
        0x7ad0607f -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final isAffectedByKnoxPolicy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setDeviceId(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "device_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-nez v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "value"

    :cond_3
    const-string/jumbo v3, "setDeviceId, featureKey: "

    const-string v4, "ConnectivityActionHandler"

    invoke-static {v3, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final setEnabled(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "onoff"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-nez v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "value"

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setEnabled, featureKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", featureValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConnectivityActionHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v2, v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
