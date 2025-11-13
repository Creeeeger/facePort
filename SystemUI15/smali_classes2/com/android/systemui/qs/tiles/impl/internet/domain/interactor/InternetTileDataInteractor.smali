.class public final Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$Companion;

.field public static final NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Inactive;


# instance fields
.field public final connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

.field public final context:Landroid/content/Context;

.field public final ethernetIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final internetLabel:Ljava/lang/String;

.field public final mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final mobileDataContentName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final mobileIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final notConnectedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->Companion:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$Companion;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Inactive;

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

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Inactive;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Inactive;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

    const p2, 0x7f130f09

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->internetLabel:Ljava/lang/String;

    check-cast p8, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    iget-object p1, p8, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$1;

    const/4 p5, 0x0

    invoke-direct {p2, p5, p0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->wifiIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast p7, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    iget-object p1, p7, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataIconInteractor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p2, p5, p0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->mobileDataContentName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$3;

    invoke-direct {p2, p5, p0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->mobileIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p1, p6, Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;->icon:Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$4;

    invoke-direct {p2, p5, p0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->ethernetIconFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast p4, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;

    iget-object p1, p4, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$notConnectedFlow$1;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$notConnectedFlow$1;-><init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p5, p8, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->areNetworksAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p4, p5, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->NOT_CONNECTED_NETWORKS_UNAVAILABLE:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Inactive;

    invoke-static {p4, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->notConnectedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$tileData$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$tileData$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method
