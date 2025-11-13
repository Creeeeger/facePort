.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;


# instance fields
.field public final allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final carrierId:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final carrierName:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final cdmaLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final cdmaRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final dataActivityDirection:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final dataConnectionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final dataEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final imsRegState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isEmergencyOnly:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isGsm:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isInService:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mobileServiceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final networkName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final numberOfLevels:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final onTheCall:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final phone:Landroid/telephony/TelephonyManager;

.field public final primaryLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final satelliteLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final serviceStateBroadcast:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final signalStrengthBroadcast:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sim1On:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final simCardInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final subId:I

.field public final swRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/telephony/TelephonyManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v6, p1

    iput v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->subId:I

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->phone:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierId:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string v9, ""

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->cdmaLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Invalid:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataConnectionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    invoke-direct {v9, v6, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;-><init>(ZZ)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataActivityDirection:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel$SubscriptionDerived;

    const-string v10, "Dummy Carrier"

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel$SubscriptionDerived;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierName:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->cdmaRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$serviceStateBroadcast$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$serviceStateBroadcast$1;

    const/4 v11, 0x0

    const/16 v12, 0xe

    invoke-static {v2, v9, v11, v10, v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$1;

    invoke-direct {v10, v9, v0, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;)V

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$serviceStateBroadcast$3;

    invoke-direct {v9, v0, v11}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$serviceStateBroadcast$3;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v13, v9, v10}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    sget-object v9, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-static {v13, v1, v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v13

    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.SIG_STR"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$signalStrengthBroadcast$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$signalStrengthBroadcast$1;

    invoke-static {v2, v14, v11, v6, v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$filter$1;

    invoke-direct {v14, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$2;

    invoke-direct {v6, v14, v4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    new-instance v14, Landroid/telephony/SignalStrength;

    invoke-direct {v14}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-static {v6, v1, v4, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 v14, 0x0

    new-array v11, v14, [Ljava/lang/Object;

    move-object/from16 v12, p8

    invoke-interface {v12, v6, v14, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$1;

    invoke-direct {v6, v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$3;

    invoke-direct {v11, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-virtual {v5, v14}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v5, v14}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    move v14, v5

    :cond_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v11, v1, v6, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isEmergencyOnly:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$2;

    invoke-direct {v5, v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$4;

    invoke-direct {v6, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v5

    invoke-static {v6, v1, v5, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isInService:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$3;

    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$5;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v5

    invoke-static {v4, v1, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->primaryLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->satelliteLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$networkName$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$networkName$1;

    const/4 v6, 0x0

    const/16 v11, 0xe

    invoke-static {v2, v4, v6, v5, v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$filter$2;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$6;

    move-object/from16 v5, p5

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v2, v1, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->networkName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->sim1On:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$4;

    invoke-direct {v2, v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$mapNotNull$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceStateKt;->DEFAULT_SERVICE_STATE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    invoke-static {v3, v1, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegStateKt;->DEFAULT_IMS_REG_STATE:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final getAllowNetworkSliceIndicator()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getCarrierId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierId:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getCarrierName()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierName:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getCarrierNetworkChangeActive()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getCdmaLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->cdmaLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getCdmaRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->cdmaRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getDataActivityDirection()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataActivityDirection:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getDataConnectionState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataConnectionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getDataEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->dataEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getHasPrioritizedNetworkCapabilities()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getImsRegState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getInflateSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getMobileDataEnabledChanged()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getMobileServiceState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getNetworkName()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->networkName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getNumberOfLevels()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getOnTheCall()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getOperatorAlphaShort()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getPrimaryLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->primaryLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getResolvedNetworkType()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSatelliteLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->satelliteLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSemOMCChangedEvent()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSemSatelliteEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSemSatelliteServiceState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSemSatelliteSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSim1On()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->sim1On:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSimCardInfo()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getSlotId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSubId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->subId:I

    return p0
.end method

.method public final getSwRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getTableLogBuffer()Lcom/android/systemui/log/table/TableLogBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    return-object p0
.end method

.method public final isAllowedDuringAirplaneMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isEmergencyOnly()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isEmergencyOnly:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isGsm()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isInService()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isInService:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isNonTerrestrial()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isRoaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isUsingNonTerrestrialNetwork()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;->isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method
