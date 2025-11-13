.class public final Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;


# instance fields
.field public final activity:Lkotlinx/coroutines/flow/StateFlow;

.field public final areNetworksAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDefault:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDefaultValidated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final isForceHidden:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$3;

.field public final ssid:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$1;

.field public final wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlow;

.field public final wifiIconGroup:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->ssid:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$1;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isEnabled:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isDefault:Lkotlinx/coroutines/flow/StateFlow;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$2;

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "isDefaultValidated"

    invoke-static {v0, p6, v2, v3, v1}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object p6

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p6, p3, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p6

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getReceivedInetCondition()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiNetwork$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiNetwork$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, p6, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->activity:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$3;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isForceHidden:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$3;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiScanResults()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v4, p6, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {v4, p3, p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->areNetworksAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p4, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;

    invoke-direct {p3, p5, v6}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p4, p6, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiIconGroup:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getHideDuringMobileSwitching()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiConnectivityTestReported()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method
