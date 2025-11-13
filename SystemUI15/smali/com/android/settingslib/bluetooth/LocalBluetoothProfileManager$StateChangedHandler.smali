.class public Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-nez v4, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: mProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    const/16 v8, 0xa

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v9, "LocalBluetoothProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "StateChangedHandler found new device: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v9, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v9, v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v9, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v7, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: Can\'t add CachedDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move-object v7, v0

    :cond_5
    const-string v0, "android.bluetooth.profile.extra.isNormallyType"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v0, "LocalBluetoothProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Profiles StateChangedHandler device : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mProfile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", new state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", old state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", normally type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v10, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-nez v0, :cond_6

    if-ne v10, v11, :cond_6

    const-string v10, "LocalBluetoothProfileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to connect "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v12, 0x2

    const-wide/16 v13, 0x0

    const/4 v15, -0x1

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v10, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v10, :cond_d

    if-ne v0, v12, :cond_d

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v16

    cmp-long v10, v16, v13

    if-nez v10, :cond_b

    iget-object v10, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v10, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v10, :cond_8

    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v10, v8}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v17

    move v10, v6

    move-wide/from16 v5, v17

    goto :goto_1

    :cond_8
    :goto_0
    move v10, v6

    move-wide v5, v13

    :goto_1
    cmp-long v17, v5, v13

    if-eqz v17, :cond_c

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v11, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;

    invoke-direct {v11}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;-><init>()V

    iget-object v13, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v13, v13, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v13, v13, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v13, :cond_9

    const-string v13, "HearingAidProfile"

    const-string v14, "Proxy not attached to HearingAidService"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v15

    goto :goto_2

    :cond_9
    invoke-virtual {v13, v8}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    :goto_2
    sget-object v14, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    iput v13, v11, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    iget-object v13, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v13, v13, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v13, v13, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v13, :cond_a

    const-string v8, "HearingAidProfile"

    const-string v13, "Proxy not attached to HearingAidService"

    invoke-static {v8, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v15

    goto :goto_3

    :cond_a
    invoke-virtual {v13, v8}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    :goto_3
    sget-object v13, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v8, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    iput v8, v11, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    iput-wide v5, v11, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->build()Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    goto :goto_4

    :cond_b
    move v10, v6

    :cond_c
    :goto_4
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_5

    :cond_d
    move v10, v6

    :goto_5
    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v6, :cond_e

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v6, v6, Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v5, :cond_f

    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v5, v5, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_7
    if-nez v6, :cond_10

    if-eqz v5, :cond_14

    :cond_10
    if-ne v0, v12, :cond_14

    iget-object v5, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v5, :cond_14

    iget-object v6, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v12, :cond_14

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v6, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;

    invoke-direct {v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;-><init>()V

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v8, :cond_12

    if-nez v5, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v8, v5}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->setLeAudioLocation(I)V

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v8, :cond_13

    move v5, v15

    goto :goto_a

    :cond_13
    invoke-virtual {v8, v5}, Landroid/bluetooth/BluetoothHapClient;->getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    :goto_a
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    iput v5, v6, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->build()Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_14
    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    const/4 v6, 0x0

    if-eqz v5, :cond_18

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v8, v8, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-eqz v8, :cond_18

    if-ne v0, v12, :cond_18

    iget v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-ne v8, v15, :cond_18

    iget-object v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;->mService:Landroid/bluetooth/BluetoothCsipSetCoordinator;

    if-eqz v5, :cond_16

    if-nez v8, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothCsipSetCoordinator;->getGroupUuidMapByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Map;

    move-result-object v5

    goto :goto_c

    :cond_16
    :goto_b
    move-object v5, v6

    :goto_c
    if-eqz v5, :cond_18

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    sget-object v13, Landroid/bluetooth/BluetoothUuid;->CAP:Landroid/os/ParcelUuid;

    invoke-virtual {v11, v13}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setGroupId(I)V

    :cond_18
    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v7, v5, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v13

    const-wide/16 v18, 0x0

    cmp-long v5, v13, v18

    if-nez v5, :cond_1a

    iget v5, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq v5, v15, :cond_19

    goto :goto_d

    :cond_19
    const/4 v8, 0x1

    goto :goto_12

    :cond_1a
    :goto_d
    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    monitor-enter v5

    const/16 v11, 0x1c

    const/16 v13, 0x19

    const/16 v14, 0x15

    if-eq v8, v11, :cond_1b

    if-eq v8, v14, :cond_1b

    if-ne v8, v13, :cond_1c

    :cond_1b
    if-ne v0, v12, :cond_1c

    :try_start_0
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v8, v7}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->syncDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1c
    :goto_e
    monitor-exit v5

    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    monitor-enter v5

    if-ne v8, v14, :cond_1d

    :try_start_1
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v8, v7, v0}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onProfileConnectionStateChangedIfProcessed(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    :goto_f
    const/4 v5, 0x1

    goto :goto_11

    :catchall_1
    move-exception v0

    goto/16 :goto_1b

    :cond_1d
    const/4 v11, 0x1

    if-eq v8, v11, :cond_1f

    if-eq v8, v12, :cond_1f

    const/16 v11, 0x16

    if-eq v8, v11, :cond_1f

    if-ne v8, v13, :cond_1e

    goto :goto_10

    :cond_1e
    monitor-exit v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_11

    :cond_1f
    :goto_10
    :try_start_2
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCsipDeviceManager:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    invoke-virtual {v8, v7, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->onProfileConnectionStateChangedIfProcessed(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    goto :goto_f

    :goto_11
    xor-int/2addr v8, v5

    :goto_12
    if-eqz v8, :cond_21

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v8, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v8

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v11, v7, v0, v8}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    goto :goto_13

    :cond_20
    const/16 v5, 0x1d

    if-ne v8, v5, :cond_21

    if-nez v0, :cond_21

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    :try_start_3
    sget-object v0, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    const-string v5, "BluetoothUtils"

    const-string v8, "LE state is on, but there is no bluetooth service."

    invoke-static {v5, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_14
    iget-object v0, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v5, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v8, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v8

    :try_start_4
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v11, v5, v4, v10}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    goto :goto_15

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    :cond_22
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_23

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "StateChangedHandler :: localBtManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    if-nez v4, :cond_36

    const/4 v4, 0x1

    if-ne v10, v4, :cond_36

    const-string v4, "LocalBluetoothProfileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to connect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f130283

    if-eqz v4, :cond_2d

    const-string v1, "LocalBluetoothProfileManager"

    const-string v4, "PAN connection was rejected by NAP or Connection Timeout..."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    const v4, 0x7f1302b5

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_24
    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    const v0, 0x7f1302b7

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_25
    iget v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_26

    iget-object v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_16

    :cond_26
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string/jumbo v3, "\u200e"

    const-string/jumbo v5, "\u200e"

    invoke-static {v3, v1, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_27
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_28

    iput-object v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_28
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_29
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2a
    iget v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2b

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_17

    :cond_2b
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "\u200e"

    const-string/jumbo v3, "\u200e"

    invoke-static {v1, v0, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_2d
    iget-object v3, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-nez v9, :cond_30

    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to connect "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " device"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string/jumbo v3, "\u200e"

    const-string/jumbo v4, "\u200e"

    invoke-static {v3, v1, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2e
    const v3, 0x7f13029c

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v3, :cond_2f

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_36

    iput-object v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_19

    :cond_2f
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    :cond_30
    sget-boolean v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_36

    const v0, 0x7f13029d

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_19

    :cond_31
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "\u200e"

    const-string/jumbo v3, "\u200e"

    invoke-static {v1, v0, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_32
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    :cond_33
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_36

    sget-boolean v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    if-eqz v0, :cond_36

    iget v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    if-eq v0, v15, :cond_35

    iget-object v0, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_34

    move-object v0, v7

    :cond_34
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    if-lez v0, :cond_35

    return-void

    :cond_35
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u200e"

    invoke-static {v1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_36
    :goto_19
    return-void

    :goto_1a
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_1b
    monitor-exit v5

    throw v0
.end method
