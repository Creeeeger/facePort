.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;
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

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

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

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->L$1:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v4, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v6, 0x2

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v6, 0x3

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v6, 0x4

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v4, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v12, 0x6

    aget-object v12, v4, v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x7

    aget-object v13, v4, v13

    check-cast v13, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    const/16 v14, 0x8

    aget-object v14, v4, v14

    check-cast v14, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    const/16 v15, 0xa

    aget-object v4, v4, v15

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v5, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v16, v1

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    move-object/from16 v17, v2

    move/from16 v18, v11

    const/4 v2, 0x0

    new-array v11, v2, [Ljava/lang/Object;

    iget v2, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v5, v1, v2, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bootstrapProfile:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getNoServiceIcon(I)I

    move-result v1

    :goto_0
    move v12, v1

    move/from16 v19, v10

    goto/16 :goto_7

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->NO_SERVICE_WHEN_NO_SIM:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v2, v3, v1, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDummySubId:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getNoServiceIcon(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->ZERO_SIGNAL_LEVEL_ON_VOWIFI:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v2, v3, v1, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v11, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    move/from16 v19, v10

    new-array v10, v5, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v2, v11, v1, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TMB"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v13, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-virtual {v2, v1, v9, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getMobileSignalIconGroup(IIZ)[I

    move-result-object v1

    array-length v2, v1

    if-gtz v2, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_1
    move v12, v1

    goto/16 :goto_7

    :cond_5
    move/from16 v19, v10

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CHANGE_SIGNAL_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v2, v5, v1, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    iget-object v3, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileSignalTransition:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    if-eqz v6, :cond_9

    if-eqz v3, :cond_8

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    move v4, v8

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v1, v9, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getMobileSignalIconGroup(IIZ)[I

    move-result-object v1

    aget v1, v1, v4

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v2, v1, v9, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getMobileSignalIconGroup(IIZ)[I

    move-result-object v1

    if-lez v4, :cond_a

    move v5, v4

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    aget v1, v1, v5

    goto :goto_1

    :cond_b
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getNoServiceIcon(I)I

    move-result v1

    goto :goto_1

    :cond_c
    if-nez v6, :cond_e

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SIGNAL_BAR_WHEN_EMERGENCY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v2, v4, v1, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getNoServiceIcon(I)I

    move-result v1

    goto :goto_1

    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v6, v3, v1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v5, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v7, v4, [Ljava/lang/Object;

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v5, v6, v3, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "XFA"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, v14, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    if-eqz v3, :cond_f

    move v5, v4

    goto :goto_6

    :cond_f
    move v5, v8

    :goto_6
    invoke-virtual {v2, v1, v9, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->getMobileSignalIconGroup(IIZ)[I

    move-result-object v1

    array-length v2, v1

    if-lt v5, v2, :cond_10

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    goto/16 :goto_1

    :cond_10
    aget v1, v1, v5

    goto/16 :goto_1

    :goto_7
    move-object v7, v15

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;-><init>(IIZZI)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4$3;->label:I

    move-object/from16 v2, v17

    invoke-interface {v2, v15, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11

    return-object v1

    :cond_11
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
