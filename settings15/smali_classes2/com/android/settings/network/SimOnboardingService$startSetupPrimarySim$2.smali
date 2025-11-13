.class final Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iput-object p2, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p1, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p1, p1, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimCalls:I

    iput v3, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->label:I

    invoke-static {v1, p1, p0}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->setDefaultVoice(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p1, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p1, p1, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimTexts:I

    iput v4, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->label:I

    invoke-static {v1, p1, p0}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->setDefaultSms(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v3, v1, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget v1, v1, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    iput v2, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->label:I

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->setDefaultData(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    const-string v1, "subscriptionsChangedFlow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget v1, v0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    const-string v0, "SimOnboardingService"

    const-string v1, "No DDS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget v7, v0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    if-eq v6, v7, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService$startSetupPrimarySim$2;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimAutoDataSwitch:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {p1, v3}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] setMobileDataPolicyEnabled(3): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, p0}, Landroid/telephony/TelephonyManager;->setMobileDataPolicyEnabled(IZ)V

    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
