.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$2$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$2$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slotId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ORANGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    iget-object v1, v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;

    if-eqz p1, :cond_9

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;->connected:Z

    if-eqz v1, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;->roaming:Z

    if-nez p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v8, p2, [Ljava/lang/Object;

    invoke-interface {v1, v7, v2, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "SKT"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    if-eqz v8, :cond_3

    sget-object v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    move-result-object v6

    if-ne v7, v6, :cond_2

    goto :goto_1

    :cond_3
    const-string v8, "KTT"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    move-result-object v6

    if-ne v7, v6, :cond_2

    goto :goto_1

    :cond_4
    const-string v8, "LGT"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    move-result-object v6

    if-ne v7, v6, :cond_2

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    iget-object v2, v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->serviceStateHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;

    if-eqz v1, :cond_7

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;->connected:Z

    if-eqz v2, :cond_7

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/logo/ServiceStateModel;->roaming:Z

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_2

    :cond_7
    move v1, p2

    :goto_2
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_8
    iput-boolean p2, v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
