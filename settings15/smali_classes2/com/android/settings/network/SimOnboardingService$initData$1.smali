.class public final Lcom/android/settings/network/SimOnboardingService$initData$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "getAvailableSubscriptions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->availableSubInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->availableSubInfoList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget v5, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    iput-object v2, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget v1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "targetSubId: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , targetSubInfo: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimOnboardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v2, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_4
    const-string v4, "<set-?>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "slotInfoList: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v2, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/settings/network/SimOnboardingService;->uiccCardInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->uiccCardInfoList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uiccCardInfoList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    iput v2, v0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimCalls:I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v2

    iput v2, v0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimTexts:I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iput v2, v0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget-object v4, v3, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "UICC Slot info list is empty."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object v2, v3, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/settings/network/UiccSlotUtil;->isRemovableSimEnabled(Ljava/util/List;)Z

    move-result v2

    :goto_2
    iget-object v3, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    invoke-virtual {v3}, Lcom/android/settings/network/SimOnboardingService;->isMultipleEnabledProfilesSupported()Z

    move-result v3

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService$initData$1;->this$0:Lcom/android/settings/network/SimOnboardingService;

    iget v4, p0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimCalls:I

    iget v5, p0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimTexts:I

    iget p0, p0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    const-string v6, "doesTargetSimHaveEsimOperation: "

    const-string v7, ", isRemovableSimEnabled: "

    const-string v8, ", isMultipleEnabledProfilesSupported: "

    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", targetPrimarySimCalls: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetPrimarySimTexts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetPrimarySimMobileData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
