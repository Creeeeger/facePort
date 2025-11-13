.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;


# instance fields
.field public final _isWifiDefault:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isWifiEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _secondaryNetworks:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wifiActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wifiNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wifiScanResults:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final dataSource:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoModeWifiDataSource;

.field public final demoCommandJob:Lkotlinx/coroutines/Job;

.field public final hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isWifiDefault:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isWifiEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final receivedInetCondition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final secondaryNetworks:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final wifiActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final wifiNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final wifiScanResults:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoModeWifiDataSource;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->isWifiEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->isWifiDefault:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->secondaryNetworks:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;-><init>(ZZ)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiScanResults:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->receivedInetCondition:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final getHideDuringMobileSwitching()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getReceivedInetCondition()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->receivedInetCondition:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSecondaryNetworks()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->secondaryNetworks:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getWifiConnectivityTestReported()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getWifiScanResults()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->wifiScanResults:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->isWifiDefault:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->isWifiEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method
