.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;

.field public static final NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;


# instance fields
.field public final activeModelProvider:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final context:Landroid/content/Context;

.field public final ethernetIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final internetLabel:Ljava/lang/String;

.field public final mobileDataContentName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final mobileIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final notConnectedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final tileModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;

    new-instance v4, Lcom/android/systemui/common/shared/model/Text$Resource;

    const v1, 0x7f130f1b

    invoke-direct {v4, v1}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    const v2, 0x7f080aa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v8, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->context:Landroid/content/Context;

    const v0, 0x7f130f09

    invoke-virtual {p6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->internetLabel:Ljava/lang/String;

    check-cast p5, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    iget-object p6, p5, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    invoke-static {p6, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->wifiIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    iget-object p4, p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataIconInteractor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {p6, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->mobileDataContentName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p6, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$3;

    invoke-direct {p6, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->mobileIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p3, p3, Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;->icon:Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;

    new-instance p4, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$4;

    invoke-direct {p4, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->ethernetIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$notConnectedFlow$1;

    invoke-direct {p3, p0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$notConnectedFlow$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p5, p5, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->areNetworksAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p4, p5, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p5

    sget-object p6, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;

    invoke-static {p4, p7, p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->notConnectedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$5;

    invoke-direct {p5, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    iget-object p3, p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p7, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->tileModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
