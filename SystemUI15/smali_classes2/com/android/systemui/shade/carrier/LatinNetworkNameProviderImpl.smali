.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final cbMsgBody:Ljava/util/HashMap;

.field public cellBroadcastService:Landroid/telephony/ICellBroadcastService;

.field public final cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

.field public final cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

.field public final cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

.field public isAirplaneMode:Z

.field public latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mNetworkNameSeparator:Ljava/lang/String;

.field public networkManuallySelected:Ljava/lang/String;

.field public final networkNameHash:Ljava/util/HashMap;

.field public final serviceStateHash:Ljava/util/HashMap;

.field public showCBMsg:Z

.field public final simState:Ljava/util/HashMap;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/LocationController;Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p6, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p7, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p9, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iput-object p10, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;-><init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    new-instance p3, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback0$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback0$1;-><init>(Ljava/lang/Object;)V

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;-><init>(ILkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    new-instance p3, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback1$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback1$1;-><init>(Ljava/lang/Object;)V

    const/4 p4, 0x1

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;-><init>(ILkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;-><init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f13122a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040740

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    return-void
.end method

.method public static final access$handleCellLocationChanged(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;I)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCellLocationChanged ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LatinNetworkNameProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iget v0, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-static {v1, v0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;->updateCarrierInfo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isLatinGSM(II)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method


# virtual methods
.method public final broadcastCBClear(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "] "

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network name["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "service state["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    const-string p2, "isAirplaneMode="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getCombinedNetworkName()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    if-ne v0, v3, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    const v0, 0x7f1308f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    const-string v5, "UNKNOWN"

    const-string v6, ""

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getLatinNetworkName(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    const-string v2, "LatinNetworkNameProvider"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getLatinNetworkName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_2
    const/4 v7, 0x2

    if-ge v5, v7, :cond_5

    iget-object v7, v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "subscriptionsOrder should be REVERSED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getCombinedNetworkName : carrierText - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public final getLatinNetworkName(I)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    const-string v3, ""

    if-eqz v2, :cond_3b

    iget v4, v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iget v2, v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-static {v4, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_39

    :cond_2
    move-object v2, v3

    goto/16 :goto_1f

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    iget-object v7, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v7, :cond_6

    iget-object v7, v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    iget-object v8, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v8, :cond_7

    iget-boolean v8, v8, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    iget-object v9, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v9, :cond_8

    iget-object v9, v9, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    iget-object v10, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->isVoWifiConnected(I)Z

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updateNetworkNameLatin: showSpn="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", spn="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataSpn="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", showPlmn="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", plmn="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", voWifiConnected="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", networkManuallySelected="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LatinNetworkNameProvider"

    invoke-static {v13, v12, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CLARO_PLMN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v8, v6, v1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->isVoWifiConnected(I)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_9
    move-object v2, v3

    :cond_a
    iget-object v4, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_39

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v4, :cond_c

    iget-object v4, v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_d

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_e
    :goto_8
    move-object v2, v5

    goto/16 :goto_1f

    :cond_f
    iget-boolean v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_16

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    if-ne v2, v7, :cond_2

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_12

    iget-boolean v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    if-ne v2, v7, :cond_12

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_12
    move-object v2, v3

    :goto_b
    iget-object v4, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v4, :cond_39

    iget-boolean v4, v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    if-ne v4, v7, :cond_39

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v0, :cond_15

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_d
    invoke-static {v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_16
    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v9, " "

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    iget-boolean v6, v6, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    if-nez v6, :cond_18

    :cond_17
    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    iget-object v6, v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    if-eqz v6, :cond_1b

    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    const v10, 0x10404ce

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    iget-object v10, v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_18
    if-ltz v1, :cond_19

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    invoke-static {v2, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_19
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    if-nez v0, :cond_1a

    move-object v0, v3

    :cond_1a
    :goto_e
    move-object v2, v0

    goto/16 :goto_1f

    :cond_1b
    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->MULTI_LINE_CARRIER_LABEL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface {v8, v6, v4, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    move v10, v4

    move v11, v10

    :goto_f
    const/16 v12, 0x20

    if-gt v10, v8, :cond_21

    if-nez v11, :cond_1c

    move v13, v10

    goto :goto_10

    :cond_1c
    move v13, v8

    :goto_10
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_1d

    move v13, v7

    goto :goto_11

    :cond_1d
    move v13, v4

    :goto_11
    if-nez v11, :cond_1f

    if-nez v13, :cond_1e

    move v11, v7

    goto :goto_f

    :cond_1e
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1f
    if-nez v13, :cond_20

    goto :goto_12

    :cond_20
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    :cond_21
    :goto_12
    add-int/2addr v8, v7

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-static {v6, v10, v4, v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    new-array v10, v4, [Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v10, "gsm.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    move v14, v4

    move v15, v14

    :goto_13
    if-gt v14, v13, :cond_27

    if-nez v15, :cond_22

    move v5, v14

    goto :goto_14

    :cond_22
    move v5, v13

    :goto_14
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_23

    move v5, v7

    goto :goto_15

    :cond_23
    move v5, v4

    :goto_15
    if-nez v15, :cond_25

    if-nez v5, :cond_24

    move v15, v7

    goto :goto_13

    :cond_24
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_25
    if-nez v5, :cond_26

    goto :goto_16

    :cond_26
    add-int/lit8 v13, v13, -0x1

    goto :goto_13

    :cond_27
    :goto_16
    add-int/2addr v13, v7

    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v4, v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-array v10, v4, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v10, "72406"

    const-string v12, "72410"

    const-string v13, "72411"

    const-string v14, "72423"

    filled-new-array {v10, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    aget-object v5, v5, v1

    filled-new-array {v10, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    if-nez v5, :cond_29

    :cond_28
    move-object v5, v3

    :cond_29
    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v6, :cond_2a

    iget-object v6, v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    if-nez v6, :cond_2b

    :cond_2a
    move-object v6, v3

    :cond_2b
    iget-object v10, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v10, :cond_2c

    iget-boolean v10, v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    goto :goto_17

    :cond_2c
    move v10, v4

    :goto_17
    iget-object v12, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    if-eqz v12, :cond_2d

    iget-boolean v12, v12, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    goto :goto_18

    :cond_2d
    move v12, v4

    :goto_18
    iget-object v13, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    if-eqz v13, :cond_e

    iget-boolean v14, v13, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    if-nez v14, :cond_2f

    const-string v14, "gsm.operator.isroaming"

    const-string v15, "false, false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8, v4, v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    new-array v11, v4, [Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    array-length v11, v8

    const-string/jumbo v14, "true"

    if-le v11, v7, :cond_2e

    aget-object v4, v8, v1

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_19

    :cond_2e
    aget-object v4, v8, v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2f
    :goto_19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    if-eqz v12, :cond_36

    if-eqz v10, :cond_36

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1d

    :cond_30
    iget-boolean v4, v13, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    if-eqz v4, :cond_36

    iget-boolean v4, v13, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    if-nez v4, :cond_36

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_1d

    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_32

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_32

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->setAreaCode(I)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1a

    :catch_0
    move-exception v0

    const-string v1, "getAreaInfo "

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_32
    :goto_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_33

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    move-object v5, v0

    goto :goto_1d

    :cond_33
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_1c

    :cond_34
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_35
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_36
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateNetworkNameLatinLAC="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_37
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1e

    :cond_38
    const/4 v5, 0x0

    :goto_1e
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_39
    :goto_1f
    if-nez v2, :cond_3a

    goto :goto_20

    :cond_3a
    move-object v3, v2

    :cond_3b
    :goto_20
    return-object v3
.end method

.method public final isUseLatinNetworkName()Z
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final registerLocationListener()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, "registerLocationListener subscriptions="

    const-string v2, "LatinNetworkNameProvider"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v5

    const-string v6, "]"

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location is enabled, start listening cell location ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3, v6, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location is turned off, stop listening cell location ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setAreaCode(I)Ljava/lang/StringBuilder;
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCellLocationBySubId(I)Landroid/telephony/CellLocation;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/16 p1, 0xff

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_1

    const p1, 0xffff

    if-eq p0, p1, :cond_1

    rem-int/lit8 p0, p0, 0x64

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "MA"

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "AP"

    goto :goto_0

    :pswitch_3
    const-string p1, "RR"

    goto :goto_0

    :pswitch_4
    const-string p1, "AM"

    goto :goto_0

    :pswitch_5
    const-string p1, "PA"

    goto :goto_0

    :pswitch_6
    const-string p1, "PI"

    goto :goto_0

    :pswitch_7
    const-string p1, "CE"

    goto :goto_0

    :pswitch_8
    const-string p1, "RN"

    goto :goto_0

    :pswitch_9
    const-string p1, "PB"

    goto :goto_0

    :pswitch_a
    const-string p1, "AL"

    goto :goto_0

    :pswitch_b
    const-string p1, "PE"

    goto :goto_0

    :pswitch_c
    const-string p1, "SE"

    goto :goto_0

    :pswitch_d
    const-string p1, "BA"

    goto :goto_0

    :pswitch_e
    const-string p1, "RO"

    goto :goto_0

    :pswitch_f
    const-string p1, "AC"

    goto :goto_0

    :pswitch_10
    const-string p1, "MS"

    goto :goto_0

    :pswitch_11
    const-string p1, "MT"

    goto :goto_0

    :pswitch_12
    const-string p1, "TO"

    goto :goto_0

    :pswitch_13
    const-string p1, "GO"

    goto :goto_0

    :pswitch_14
    const-string p1, "DF"

    goto :goto_0

    :pswitch_15
    const-string p1, "RS"

    goto :goto_0

    :pswitch_16
    const-string p1, "SC"

    goto :goto_0

    :pswitch_17
    const-string p1, "PR"

    goto :goto_0

    :pswitch_18
    const-string p1, "MG"

    goto :goto_0

    :pswitch_19
    const-string p1, "ES"

    goto :goto_0

    :pswitch_1a
    const-string p1, "RJ"

    goto :goto_0

    :pswitch_1b
    const-string p1, "SP"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setAreaCode areaInfo="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LatinNetworkNameProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final unregisterLocationListener()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method
