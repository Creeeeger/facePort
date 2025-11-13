.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;
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
.field final synthetic $connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field final synthetic $semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

.field final synthetic $wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V

    iput-object p1, p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aget-object v5, v1, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v1, v7

    check-cast v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    check-cast v8, Lcom/android/settingslib/SignalIcon$IconGroup;

    const/4 v9, 0x5

    aget-object v9, v1, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x6

    aget-object v1, v1, v10

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v4, :cond_b

    if-nez v6, :cond_b

    instance-of v4, v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    if-nez v4, :cond_b

    if-eqz v9, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    instance-of v6, v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v6, :cond_3

    move-object v6, v7

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result v6

    if-ne v6, v2, :cond_3

    move v1, v2

    :cond_3
    if-eqz v4, :cond_4

    instance-of v6, v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v6, :cond_4

    if-nez v1, :cond_4

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    new-instance v6, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const v8, 0x7f0813b7

    invoke-direct {v3, v8, v6}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9, v3, v8}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;->fromModel(Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;Landroid/content/Context;ZLcom/android/settingslib/SignalIcon$IconGroup;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    move-result-object v3

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    :goto_0
    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    instance-of v1, v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;->alwaysShowIconIfEnabled:Z

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->hasDataCapabilities:Z

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    instance-of v1, v7, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    goto :goto_2

    :cond_b
    :goto_1
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    :goto_2
    iput v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    :cond_c
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
