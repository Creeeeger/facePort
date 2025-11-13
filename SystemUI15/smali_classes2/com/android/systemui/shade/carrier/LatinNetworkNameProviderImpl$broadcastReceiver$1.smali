.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p2

    if-eqz v0, :cond_14

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "android.telephony.extra.SLOT_INDEX"

    const-string v6, "phone"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v10, "LatinNetworkNameProvider"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CB is being cleared on slot="

    invoke-static {v0, v2, v10}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;->updateCarrierInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_1
    const-string v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v2, "network_manually_selected"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_manually_selected_phone_id"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_14

    if-ltz v0, :cond_14

    iput-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    goto/16 :goto_5

    :sswitch_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "ss"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v9, :cond_5

    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v3, "ABSENT"

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;->updateCarrierInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_3
    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->registerLocationListener()V

    goto/16 :goto_5

    :sswitch_4
    const-string v3, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string v3, "android.telephony.extra.SPN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "android.telephony.extra.DATA_SPN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string v3, "android.telephony.extra.PLMN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "showEpdg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/shade/carrier/NetworkNameInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateNetworkName ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :sswitch_5
    const-string v3, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "enable"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v2, v9, :cond_b

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_a

    iget-object v8, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[INVALID_SIM_SLOT_INDEX] slotId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plmn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    goto/16 :goto_3

    :cond_b
    if-nez v0, :cond_c

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    iget-boolean v0, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    if-eqz v0, :cond_d

    :try_start_0
    invoke-interface {v0, v2}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "Can\'t get cell broadcast msg on channel 50"

    invoke-static {v10, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    const-string v0, ""

    :goto_2
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_e

    iget-object v8, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    :cond_e
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CellBroadcast Message arrived. Slot="

    const-string v4, " PLMN="

    const-string v5, " CbMsg="

    invoke-static {v2, v3, v4, v8, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    :cond_f
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;->updateCarrierInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_6
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v8

    :cond_11
    if-eqz v8, :cond_14

    new-instance v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v14

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v15

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_12

    move/from16 v16, v7

    goto :goto_4

    :cond_12
    move/from16 v16, v4

    :goto_4
    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/shade/carrier/ServiceStateInfo;-><init>(IIZZZ)V

    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    if-eqz v3, :cond_13

    iget v4, v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iget v3, v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-static {v4, v3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iget v4, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-static {v3, v4}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    :cond_13
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eq v3, v0, :cond_14

    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v2, "There\'s changes in Subscriptions "

    const-string v4, " -> "

    invoke-static {v3, v0, v2, v4, v10}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->unregisterLocationListener()V

    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->registerLocationListener()V

    :cond_14
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_6
        -0x4549d447 -> :sswitch_5
        -0x2264170f -> :sswitch_4
        -0x1e7960ae -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        -0xae47595 -> :sswitch_1
        0x4742679e -> :sswitch_0
    .end sparse-switch
.end method
