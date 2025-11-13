.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;

    iget v3, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Landroid/telephony/ServiceState;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v7

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isVoiceCallAvailable()Z

    move-result v8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v9

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v10

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v11

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v12

    const/16 v15, 0xc0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v16}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v5, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
