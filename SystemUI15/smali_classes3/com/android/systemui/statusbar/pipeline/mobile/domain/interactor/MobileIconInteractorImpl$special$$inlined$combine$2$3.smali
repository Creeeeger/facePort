.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;
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

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

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

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    aget-object v7, v4, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v4, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v4, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x4

    aget-object v10, v4, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x5

    aget-object v11, v4, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v12, 0x6

    aget-object v12, v4, v12

    check-cast v12, Ljava/lang/Integer;

    const/4 v13, 0x7

    aget-object v4, v4, v13

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v13, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v14, v13, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v15, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v3, v5, [Ljava/lang/Object;

    iget v13, v13, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v14, v15, v13, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-boolean v13, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bootstrapProfile:Z

    if-nez v13, :cond_7

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v7, v4, v3, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v5, [Ljava/lang/Object;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v4, v6, v3, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_HKTW_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v5, [Ljava/lang/Object;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v4, v6, v3, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v9, :cond_7

    if-nez v11, :cond_7

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v5, [Ljava/lang/Object;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v4, v6, v3, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v11, :cond_7

    if-eqz v12, :cond_7

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->subId:I

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2$3;->label:I

    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
