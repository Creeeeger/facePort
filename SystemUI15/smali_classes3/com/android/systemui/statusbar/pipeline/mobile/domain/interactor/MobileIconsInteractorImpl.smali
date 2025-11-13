.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activeDataConnectionHasDataEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activeDataIconInteractor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activeDataSubId:Lkotlinx/coroutines/flow/StateFlow;

.field public final addDefaultSubscriptionInfoIfabsent:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$2;

.field public final alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final alwaysUseCdmaLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bgHandler:Landroid/os/Handler;

.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final context:Landroid/content/Context;

.field public final dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

.field public final defaultMobileIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultMobileIconMapping:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultMobileIconMappingTable:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final deviceOnTheCall:Lkotlinx/coroutines/flow/StateFlow;

.field public final disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

.field public final filteredSubscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final forcingCellularValidation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final icons:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDefaultConnectionFailed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDeviceInEmergencyCallsOnlyMode:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$5;

.field public final isForceHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSingleCarrier:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mobileConnectionsRepo:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

.field public final mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

.field public final reuseCache:Ljava/util/Map;

.field public final roamingIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

.field public final unfilteredSubscriptions:Lkotlinx/coroutines/flow/StateFlow;

.field public final userSetupRepo:Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;

.field public final wifiRepo:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Landroid/os/Handler;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileConnectionsRepo:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->userSetupRepo:Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->wifiRepo:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->context:Landroid/content/Context;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->roamingIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->bgHandler:Landroid/os/Handler;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->reuseCache:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getMobileIsDefault()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getHasCarrierMergedConnection()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$mobileIsDefault$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$mobileIsDefault$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v8, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const-string v4, "Intr"

    const-string v5, "mobileIsDefault"

    const/4 v6, 0x0

    invoke-static {v8, v1, v4, v5, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v2, v10, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getActiveMobileDataRepository()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {v12, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v12}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v10

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v12

    invoke-static {v10, v2, v12, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataConnectionHasDataEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$activeDataIconInteractor$1;

    invoke-direct {v12, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$activeDataIconInteractor$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v12}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v10

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v12

    invoke-static {v10, v2, v12, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataIconInteractor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getSubscriptions()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$1;

    invoke-direct {v12, v10, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$2;

    invoke-direct {v12, v10, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    move-object/from16 v13, p4

    check-cast v13, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    iget-object v14, v13, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->vcnSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;

    invoke-direct {v15, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v10, v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v14, "filteredSubscriptions"

    invoke-static {v10, v1, v4, v14, v12}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v10, v2, v14, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->filteredSubscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$icons$1;

    invoke-direct {v14, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$icons$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v14}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v10

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v10, v2, v14, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->icons:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getActiveSubChangedInGroupEvent()Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$filter$1;

    invoke-direct {v12, v10, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;)V

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$forcingCellularValidation$2;

    invoke-direct {v10, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$forcingCellularValidation$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v10}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v10

    const-string v12, "forcingValidation"

    invoke-static {v10, v1, v4, v12, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v12

    invoke-static {v10, v2, v12, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultMobileIconMappingTable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$defaultMobileIconMappingTable$1;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$defaultMobileIconMappingTable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v15, v12, v14}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v15, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconMappingTable:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultMobileIconMapping()Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v15

    invoke-static {v12, v2, v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconMapping:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultDataSubRatConfig()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$alwaysShowDataRatIcon$1;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$alwaysShowDataRatIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v14}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v12

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v12, v2, v14, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultDataSubRatConfig()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$alwaysUseCdmaLevel$1;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$alwaysUseCdmaLevel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v14}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v12

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v12, v2, v14, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysUseCdmaLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getSubscriptions()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$3;

    invoke-direct {v14, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v12, "isSingleCarrier"

    invoke-static {v14, v1, v4, v12, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v12, v2, v14, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isSingleCarrier:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultMobileIconGroup()Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    sget-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v12, v2, v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDefaultConnectionIsValidated()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$isDefaultConnectionFailed$1;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$isDefaultConnectionFailed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v12, v10, v14}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v5

    const-string v7, "isDefaultConnectionFailed"

    invoke-static {v5, v1, v4, v7, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v1, v2, v4, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isDefaultConnectionFailed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$4;

    iget-object v4, v13, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v1, v2, v4, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDeviceServiceState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$5;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isDeviceInEmergencyCallsOnlyMode:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$special$$inlined$map$5;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataSubId:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getDeviceOnTheCall()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->deviceOnTheCall:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final createMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileConnectionsRepo:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    move-result-object v15

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->context:Landroid/content/Context;

    move-object/from16 v16, v4

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->bootstrapProfile(I)Z

    move-result v26

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->bgHandler:Landroid/os/Handler;

    move-object/from16 v27, v3

    const/16 v28, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataConnectionHasDataEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysUseCdmaLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isSingleCarrier:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataSubId:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconMappingTable:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object v11, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconMapping:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v13, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isDefaultConnectionFailed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v14, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->userSetupRepo:Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->wifiRepo:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->roamingIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->deviceOnTheCall:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v25, v1

    const/high16 v29, 0x2000000

    const/16 v30, 0x0

    move-object v1, v2

    invoke-direct/range {v2 .. v30}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lkotlinx/coroutines/flow/StateFlow;ZLandroid/os/Handler;Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->reuseCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->reuseCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    iget v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->createMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->reuseCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->createMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method
