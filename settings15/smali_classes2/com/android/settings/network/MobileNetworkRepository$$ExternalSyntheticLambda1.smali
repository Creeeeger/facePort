.class public final synthetic Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

    iget-object v0, v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "MobileNetworkRepository"

    const-string v3, "DataRoamingObserver changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v3, v2, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mRegSubId:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/settings/network/MobileNetworkRepository;->insertMobileNetworkInfo(Landroid/content/Context;ILandroid/telephony/TelephonyManager;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v0, v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v4, v1, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v4, :cond_2

    sget-boolean v0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MobileNetworkRepository"

    const-string v4, "availableSudInfoList from framework is empty, remove all subs"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v0, v2

    :goto_0
    if-ge v3, v0, :cond_24

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/settings/network/MobileNetworkRepository;->deleteAllInfoBySubId(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_24

    new-array v5, v3, [Landroid/telephony/SubscriptionInfo;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionInfo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v4, :cond_8

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    iget-object v9, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v9, Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v0, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/MobileNetworkRepository;->deleteAllInfoBySubId(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_8

    array-length v0, v2

    move v4, v3

    :goto_3
    if-ge v4, v0, :cond_8

    aget-object v6, v2, v4

    sget-object v7, Lcom/android/settings/network/MobileNetworkRepository;->sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v6, v6, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/settings/network/MobileNetworkRepository;->deleteAllInfoBySubId(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    array-length v0, v5

    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_24

    aget-object v4, v5, v2

    sget-boolean v6, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v7, "MobileNetworkRepository"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "insert subInfo to subInfoEntity, subInfo = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result v7

    if-eq v7, v8, :cond_a

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    if-eqz v6, :cond_b

    const-string v4, "MobileNetworkRepository"

    const-string v6, "Do not insert the provisioning or satellite eSIM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move/from16 v24, v0

    move/from16 v26, v2

    move v2, v3

    move-object/from16 v25, v5

    goto/16 :goto_14

    :cond_c
    iget-object v7, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/settings/network/MobileNetworkRepository;->createTelephonyManagerBySubId(I)V

    invoke-virtual {v1, v7, v9}, Lcom/android/settings/network/MobileNetworkRepository;->getTelephonyManagerBySubId(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    const-string v12, "MobileNetworkRepository"

    const/4 v13, 0x0

    if-nez v10, :cond_d

    if-eqz v6, :cond_19

    const-string v4, "Can not get TelephonyManager for subId "

    invoke-static {v11, v4, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v14

    if-eqz v14, :cond_18

    array-length v15, v14

    if-nez v15, :cond_e

    goto/16 :goto_c

    :cond_e
    move v6, v3

    :goto_5
    array-length v13, v14

    if-ge v6, v13, :cond_11

    aget-object v13, v14, v6

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v15

    const/4 v3, 0x2

    if-ne v15, v3, :cond_f

    invoke-virtual {v13}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mIsEuicc:Z

    invoke-virtual {v13}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v3

    iput v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mCardState:I

    invoke-virtual {v13}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mIsRemovable:Z

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    iput v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mCardId:I

    invoke-virtual {v13}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v3

    new-instance v13, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;

    invoke-direct {v13, v1, v4, v6}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/telephony/SubscriptionInfo;I)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mPhysicalSlotIndex:I

    const/4 v13, -0x1

    if-eq v3, v13, :cond_10

    goto :goto_6

    :cond_f
    sget-boolean v3, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "Can not get card state info"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_11
    :goto_6
    iget-object v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v6, v1, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v13, 0x7b2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    invoke-virtual {v3, v6, v13, v14}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    invoke-static {v7}, Lcom/android/settings/network/SubscriptionUtil;->getFirstRemovableSubscription(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    sget-boolean v6, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v6, :cond_12

    const-string v6, "convert subscriptionInfo to entity for subId = "

    invoke-static {v11, v6, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    new-instance v6, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v15

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v16

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    move-object/from16 v18, v13

    goto :goto_8

    :cond_13
    const-string v13, ""

    goto :goto_7

    :goto_8
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v19

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v23

    iget v13, v1, Lcom/android/settings/network/MobileNetworkRepository;->mCardId:I

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v25

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v26

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result v28

    invoke-static {v7, v4}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    iget-object v8, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v8, v7, v4}, Lcom/android/settings/network/SubscriptionUtil;->isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v30

    invoke-static {v7, v4}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v31

    if-nez v3, :cond_15

    :cond_14
    const/16 v32, 0x0

    goto :goto_9

    :cond_15
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v11, :cond_14

    const/16 v32, 0x1

    :goto_9
    new-instance v3, Lcom/android/settings/network/helper/SelectableSubscriptions;

    invoke-direct {v3, v7}, Lcom/android/settings/network/helper/SelectableSubscriptions;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultSubscriptionSelection(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result v3

    if-ne v3, v11, :cond_16

    const/16 v33, 0x1

    goto :goto_a

    :cond_16
    const/16 v33, 0x0

    :goto_a
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v34

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v35

    iget-object v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v11}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v36

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    if-ne v3, v11, :cond_17

    const/16 v38, 0x1

    goto :goto_b

    :cond_17
    const/16 v38, 0x0

    :goto_b
    const/16 v37, 0x1

    move v3, v13

    move-object v13, v6

    move/from16 v24, v3

    invoke-direct/range {v13 .. v38}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;ILjava/lang/String;ZLjava/lang/String;ZZZZZZZ)V

    goto :goto_d

    :cond_18
    :goto_c
    if-eqz v6, :cond_19

    const-string v3, "uiccSlotInfos = null or empty"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_d
    if-eqz v13, :cond_22

    sget-object v3, Lcom/android/settings/network/MobileNetworkRepository;->sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {v4, v13}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v24, v0

    move/from16 v26, v2

    move-object/from16 v25, v5

    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_1b
    :goto_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v3, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Convert subId "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to SubscriptionInfoEntity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1c
    const-string v4, "insertSubsInfo into SubscriptionInfoEntity"

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    iget-object v4, v1, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    filled-new-array {v13}, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "insertSubInfo"

    const-string v11, "MobileNetworkDatabase"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v6}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;[Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    iget-object v4, v4, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-static {v4, v6, v13, v8}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v6, v1, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v8, 0x7ae

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    new-instance v4, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iget v6, v1, Lcom/android/settings/network/MobileNetworkRepository;->mPhysicalSlotIndex:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iget v6, v1, Lcom/android/settings/network/MobileNetworkRepository;->mLogicalSlotIndex:I

    iget v8, v1, Lcom/android/settings/network/MobileNetworkRepository;->mCardId:I

    iget-boolean v13, v1, Lcom/android/settings/network/MobileNetworkRepository;->mIsEuicc:Z

    if-nez v10, :cond_1d

    move/from16 v24, v0

    const-string v0, "TelephonyManager is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    move-object/from16 v25, v5

    move/from16 v16, v13

    const/16 v19, 0x0

    goto :goto_11

    :cond_1d
    move/from16 v24, v0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "UICC card info list is empty."

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    move-object/from16 v25, v5

    new-instance v5, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;

    move/from16 v16, v13

    const/4 v13, 0x2

    invoke-direct {v5, v13}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    move/from16 v19, v0

    :goto_11
    iget v0, v1, Lcom/android/settings/network/MobileNetworkRepository;->mCardState:I

    iget-boolean v5, v1, Lcom/android/settings/network/MobileNetworkRepository;->mIsRemovable:Z

    iget-boolean v13, v1, Lcom/android/settings/network/MobileNetworkRepository;->mIsActive:Z

    move/from16 v26, v2

    iget v2, v1, Lcom/android/settings/network/MobileNetworkRepository;->mPortIndex:I

    move/from16 v22, v13

    move/from16 v18, v16

    move-object v13, v4

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v20, v0

    move/from16 v21, v5

    move/from16 v23, v2

    invoke-direct/range {v13 .. v23}, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZIZZI)V

    if-eqz v3, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "uiccInfoEntity = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheUiccInfoEntityMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_12

    :cond_20
    const/4 v2, 0x0

    goto :goto_13

    :cond_21
    :goto_12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    filled-new-array {v4}, [Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "insertUiccInfo"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;[Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v3, v1, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v4, 0x7af

    invoke-virtual {v0, v3, v4, v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_13
    invoke-virtual {v1, v7, v9, v10}, Lcom/android/settings/network/MobileNetworkRepository;->insertMobileNetworkInfo(Landroid/content/Context;ILandroid/telephony/TelephonyManager;)V

    goto :goto_14

    :cond_22
    move/from16 v24, v0

    move/from16 v26, v2

    move-object/from16 v25, v5

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "Can not insert subInfo, the entity is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_14
    add-int/lit8 v0, v26, 0x1

    move v3, v2

    move-object/from16 v5, v25

    move v2, v0

    move/from16 v0, v24

    goto/16 :goto_4

    :cond_24
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
