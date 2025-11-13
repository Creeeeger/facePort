.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;

    aget-object v7, v4, v3

    check-cast v7, Ljava/util/Map;

    const/4 v8, 0x2

    aget-object v9, v4, v8

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const/4 v10, 0x3

    aget-object v11, v4, v10

    check-cast v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    const/4 v12, 0x4

    aget-object v13, v4, v12

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x5

    aget-object v15, v4, v14

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v16, 0x6

    aget-object v4, v4, v16

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    instance-of v8, v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;

    if-eqz v8, :cond_2

    sget-object v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;->iconGroupOverride:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_12

    :cond_2
    if-eqz v7, :cond_23

    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v12, v8, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v5, v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v8, v8, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v5, v3, v8, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    iget-object v10, v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    iget v11, v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    const/16 v17, 0x14

    iget-object v14, v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    if-eqz v3, :cond_7

    if-eqz v13, :cond_3

    iget-object v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v14

    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    :goto_0
    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    if-nez v15, :cond_6

    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v4, v8, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v10, v4, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_21

    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v13}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v15, :cond_21

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_b

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_b
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_c
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v13}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v12, "TMB_OPEN"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v13}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v12, "TMK_OPEN"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto/16 :goto_f

    :cond_d
    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v13}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "INU_4G"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    iget v13, v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    const/16 v15, 0xd

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    if-ne v13, v12, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->AIRTEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v10, v3, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    :goto_6
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_21

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_21

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_12
    sget-object v10, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_AMX_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/Object;

    invoke-interface {v5, v10, v8, v15}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x4

    if-ne v13, v10, :cond_13

    const/4 v4, 0x1

    :goto_9
    const/4 v10, 0x3

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    goto :goto_9

    :goto_a
    if-ne v13, v10, :cond_14

    const/4 v10, 0x1

    goto :goto_b

    :cond_14
    const/4 v10, 0x0

    :goto_b
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v6

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0xd

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v12}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "CDR"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    new-array v12, v11, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v12}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "AMX"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    new-array v12, v11, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v12}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "PCT"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_15
    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    new-array v12, v11, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v12}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "TCE"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "CHL"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_17
    if-nez v4, :cond_18

    if-eqz v10, :cond_1a

    :cond_18
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    :goto_c
    move-object v3, v4

    goto/16 :goto_10

    :goto_d
    if-eqz v4, :cond_19

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_19
    if-eqz v10, :cond_1a

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_1a
    move-object v3, v6

    goto :goto_10

    :cond_1b
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v5, v3, v8, v12}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget v3, v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    if-nez v3, :cond_1d

    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    move-object v4, v14

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1d
    :goto_e
    const/16 v3, 0x10

    if-ne v11, v3, :cond_1e

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_1e
    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1f
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_20
    :goto_f
    invoke-interface {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v15, :cond_21

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_21
    :goto_10
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-nez v3, :cond_22

    goto :goto_11

    :cond_22
    move-object v9, v3

    :cond_23
    :goto_11
    const/4 v3, 0x1

    :goto_12
    iput v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1$3;->label:I

    invoke-interface {v2, v9, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_24

    return-object v1

    :cond_24
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
