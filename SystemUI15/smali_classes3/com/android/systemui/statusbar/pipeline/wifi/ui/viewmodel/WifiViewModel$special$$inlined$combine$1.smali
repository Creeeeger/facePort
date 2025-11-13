.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field public final synthetic $flows$inlined:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

.field public final synthetic $wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V

    invoke-static {v1, v0, v8, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
