.class public Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-nez v4, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: mProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    const/16 v8, 0xa

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v9, "LocalBluetoothProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "StateChangedHandler found new device: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    if-ne v9, v8, :cond_2

    const-string v9, "com.android.settings"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v4, :cond_2

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler: not create cached for devices that have already been unbonded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v9, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v9, v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v9, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v7, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: Can\'t add CachedDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move-object v7, v3

    :cond_5
    const-string v3, "android.bluetooth.profile.extra.isNormallyType"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v9, "LocalBluetoothProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Profiles StateChangedHandler device : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mProfile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", new state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", old state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", normally type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-nez v9, :cond_6

    if-ne v10, v11, :cond_6

    const-string v10, "LocalBluetoothProfileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to connect "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v10, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v10, :cond_b

    if-ne v9, v15, :cond_b

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v16

    cmp-long v10, v16, v12

    if-nez v10, :cond_9

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move/from16 v18, v6

    invoke-virtual {v10, v8}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v5

    cmp-long v8, v5, v12

    if-eqz v8, :cond_a

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v10, :cond_7

    const-string v10, "HearingAidProfile"

    const-string v11, "Proxy not attached to HearingAidService"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v14

    goto :goto_0

    :cond_7
    invoke-virtual {v10, v8}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    :goto_0
    sget-object v11, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v11, v11, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v11, v11, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v11, :cond_8

    const-string v8, "HearingAidProfile"

    const-string v11, "Proxy not attached to HearingAidService"

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v14

    goto :goto_1

    :cond_8
    invoke-virtual {v11, v8}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    :goto_1
    sget-object v11, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    new-instance v11, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    invoke-direct {v11, v10, v8, v5, v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    invoke-virtual {v7, v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    goto :goto_2

    :cond_9
    move/from16 v18, v6

    :cond_a
    :goto_2
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_3

    :cond_b
    move/from16 v18, v6

    :goto_3
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v6, v6, Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    :goto_4
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v5, v5, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    if-nez v6, :cond_e

    if-eqz v5, :cond_17

    :cond_e
    if-ne v9, v15, :cond_17

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHapClientDevice()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v6, :cond_10

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v6, 0x0

    :goto_7
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    const v8, 0x5451451

    and-int/2addr v8, v6

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_8
    const v10, 0xa8a28a2

    and-int/2addr v6, v10

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_9
    if-eqz v8, :cond_13

    if-eqz v6, :cond_13

    move v6, v15

    goto :goto_a

    :cond_13
    if-eqz v8, :cond_14

    const/4 v6, 0x0

    goto :goto_a

    :cond_14
    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    move v6, v14

    :goto_a
    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v8, :cond_16

    move v5, v14

    goto :goto_b

    :cond_16
    invoke-virtual {v8, v5}, Landroid/bluetooth/BluetoothHapClient;->getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    :goto_b
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    new-instance v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    invoke-direct {v8, v6, v5, v12, v13}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    invoke-virtual {v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_17
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    const/4 v6, 0x0

    if-eqz v5, :cond_1b

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v8, v8, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-eqz v8, :cond_1b

    if-ne v9, v15, :cond_1b

    iget v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-ne v8, v14, :cond_1b

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;->mService:Landroid/bluetooth/BluetoothCsipSetCoordinator;

    if-eqz v5, :cond_19

    if-nez v8, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;

    move-result-object v5

    goto :goto_d

    :cond_19
    :goto_c
    move-object v5, v6

    :goto_d
    if-eqz v5, :cond_1b

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->CAP:Landroid/os/ParcelUuid;

    invoke-virtual {v10, v11}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    :cond_1b
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v7, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v10

    cmp-long v5, v10, v12

    if-nez v5, :cond_1d

    iget v5, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq v5, v14, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v8, 0x1

    goto :goto_13

    :cond_1d
    :goto_e
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    monitor-enter v5

    const/16 v10, 0x1c

    const/16 v11, 0x19

    const/16 v12, 0x15

    if-eq v8, v10, :cond_1e

    if-eq v8, v12, :cond_1e

    if-ne v8, v11, :cond_1f

    :cond_1e
    if-ne v9, v15, :cond_1f

    :try_start_0
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v8, v7}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->syncDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1f
    :goto_f
    monitor-exit v5

    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    monitor-enter v5

    if-ne v8, v12, :cond_20

    :try_start_1
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v8, v9, v7}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onProfileConnectionStateChangedIfProcessed(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    :goto_10
    const/4 v5, 0x1

    goto :goto_12

    :catchall_1
    move-exception v0

    goto/16 :goto_1b

    :cond_20
    const/4 v10, 0x1

    if-eq v8, v10, :cond_22

    if-eq v8, v15, :cond_22

    const/16 v10, 0x16

    if-eq v8, v10, :cond_22

    if-ne v8, v11, :cond_21

    goto :goto_11

    :cond_21
    monitor-exit v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_12

    :cond_22
    :goto_11
    :try_start_2
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    invoke-virtual {v8, v9, v7}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->onProfileConnectionStateChangedIfProcessed(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    goto :goto_10

    :goto_12
    xor-int/2addr v8, v5

    :goto_13
    if-eqz v8, :cond_24

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v10, v7, v9, v8}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    goto :goto_14

    :cond_23
    const/16 v5, 0x1d

    if-ne v8, v5, :cond_24

    if-nez v9, :cond_24

    sget-boolean v5, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    :cond_24
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v9, v5, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v9

    :try_start_3
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;

    move/from16 v11, v18

    invoke-interface {v10, v7, v8, v4, v11}, Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    move/from16 v18, v11

    goto :goto_15

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    :cond_25
    move/from16 v11, v18

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    if-nez v5, :cond_26

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: localBtManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    if-nez v4, :cond_39

    const/4 v4, 0x1

    if-ne v11, v4, :cond_39

    const-string v4, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to connect "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " device"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PAN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v6, 0x7f1406d8

    if-eqz v4, :cond_30

    const-string v0, "LocalBluetoothProfileManager"

    const-string v3, "PAN connection was rejected by NAP or Connection Timeout..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    const v3, 0x7f140788

    if-nez v2, :cond_2c

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_27
    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    const v0, 0x7f14078a

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_28
    iget v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_29

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_16

    :cond_29
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "\u200e"

    const-string v4, "\u200e"

    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_2b

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_2b
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_2c
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2d
    iget v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2e

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_17

    :cond_2e
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "\u200e"

    const-string v4, "\u200e"

    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_30
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    if-nez v3, :cond_33

    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to connect "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " device"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "\u200e"

    const-string v3, "\u200e"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    const v2, 0x7f140741

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v2, :cond_32

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_39

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_32
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    :cond_33
    sget-boolean v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v0, :cond_34

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0x7f140742

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_19

    :cond_34
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "\u200e"

    const-string v3, "\u200e"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_35
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    :cond_36
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_39

    sget-boolean v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz v0, :cond_39

    iget v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq v0, v14, :cond_38

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_37

    move-object v0, v7

    :cond_37
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    if-lez v0, :cond_38

    return-void

    :cond_38
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u200e"

    invoke-static {v2, v0, v2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_39
    :goto_19
    return-void

    :goto_1a
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1b
    monitor-exit v5

    throw v0
.end method
