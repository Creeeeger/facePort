.class final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->label:I

    if-nez v1, :cond_1c

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1b

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v3, v1, v0, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x3e7

    if-eqz v1, :cond_1

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    const/16 v7, 0x11

    const/4 v8, 0x3

    const/16 v9, 0xd

    const/16 v10, 0xf

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_AMX_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v15, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v15}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x2

    if-eqz v1, :cond_5

    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "PCT"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "CHL"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_4
    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DOR:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "KTT"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_7
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "TUR"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_8
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "INU_4G"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->RELIANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v2, v0, :cond_1b

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_9
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CHC"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CHM"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_4

    :cond_a
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CTC"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_b
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_OPEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v3, v7, v0, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "VZW_OPEN"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "ATT_OPEN"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "AIO_OPEN"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USC_OPEN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "OYA"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "VID"

    if-nez v7, :cond_18

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "OYV"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "OYB"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_3

    :cond_10
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "OYC"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_11
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "ATT"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "AIO"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_2

    :cond_12
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "USC"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_13
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "DSH"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "DSA"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_1

    :cond_14
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DSG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_15
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_16
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_ATT_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ATT_PCN:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-eq v2, v0, :cond_17

    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_17
    invoke-static {v15}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_18
    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_1a
    :goto_4
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->CMCC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v2, v0, :cond_1b

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_5
    return-object v4

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
