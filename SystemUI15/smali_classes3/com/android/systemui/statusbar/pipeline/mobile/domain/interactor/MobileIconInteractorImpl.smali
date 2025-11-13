.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;


# instance fields
.field public final activeDataSubId:Lkotlinx/coroutines/flow/StateFlow;

.field public final activity:Lkotlinx/coroutines/flow/StateFlow;

.field public final alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/StateFlow;

.field public final bgHandler:Landroid/os/Handler;

.field public final bootstrapProfile:Z

.field public final carrierIdIconOverrideExists:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final carrierIdOfVzwMVNO:[Ljava/lang/Integer;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final carrierName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

.field public final cellularIcon:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4;

.field public final cellularShownLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;

.field public final contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

.field public final defaultNetworkType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final disabledActivityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final disabledDataIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

.field public final isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDataConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDataEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDummySubId:Z

.field public final isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

.field public final isForceHidden:Lkotlinx/coroutines/flow/Flow;

.field public final isInService:Lkotlinx/coroutines/flow/StateFlow;

.field public final isNonTerrestrial:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isRoaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSim1On:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSimOn:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSingleCarrier:Lkotlinx/coroutines/flow/StateFlow;

.field public final isVoWifiConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final level:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlow;

.field public final mobileIsDefault:Lkotlinx/coroutines/flow/StateFlow;

.field public final mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

.field public final mobileSignalTransition:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;

.field public final networkName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final networkTypeIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

.field public final otherSlotInCallState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final roamingIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;

.field public final roamingId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final satelliteIcon:Lkotlinx/coroutines/flow/Flow;

.field public final satelliteShownLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shouldShowDisabledDataIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showExclamationMark:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showSliceAttribution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

.field public final signalLevelIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final signalLevelUpdate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final slotId:I

.field public final tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field public final updateSignalTransition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final updatedMobileIconMapping:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiConnected:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lkotlinx/coroutines/flow/StateFlow;ZLandroid/os/Handler;Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;",
            "Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;",
            "Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isSingleCarrier:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->roamingIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move/from16 v5, p24

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bootstrapProfile:Z

    move-object/from16 v5, p25

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bgHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;

    move-object/from16 v6, p13

    move-object/from16 v7, p22

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;

    iget v6, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->slotId:I

    iput v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    iget-object v7, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v8, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataActivityDirection:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->activity:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v8, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v8, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v11, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierId:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v13, v11, v12, v2, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    sget-object v11, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v1, v13, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    new-instance v13, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkName$1;

    invoke-direct {v13, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkName$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v10, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->networkName:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v15, v10, v12, v13}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v13, 0x3

    invoke-static {v11, v13}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-interface {v12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v15, v1, v4, v12}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->networkName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierName$1;

    const/4 v12, 0x0

    invoke-direct {v4, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierName$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierName:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v12, v10, v13, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v4, 0x3

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-interface {v13}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v1, v10, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileSignalTransition:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isRoaming$1;

    const/4 v10, 0x0

    invoke-direct {v4, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isRoaming$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v10, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaRoaming:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v3, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isRoaming:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v16, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v20, v4

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-static {v3, v1, v10, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isRoaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v13, v2, v15, v10}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$2;

    invoke-direct {v2, v0, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updatedMobileIconMapping$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v10, v13, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 p19, v8

    move-object v8, v15

    move-object v15, v13

    move-object/from16 v16, v10

    move-object/from16 v17, p10

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    filled-new-array/range {v15 .. v21}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1;

    invoke-direct {v10, v2, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    const/4 v2, 0x3

    invoke-static {v11, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v12

    invoke-interface/range {p10 .. p10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v1, v12, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v12, v2, v9, v10}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    invoke-interface/range {p10 .. p10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;-><init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;)V

    const-string v10, ""

    invoke-static {v2, v7, v10, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    invoke-interface/range {p10 .. p10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-direct {v9, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;-><init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;)V

    invoke-static {v2, v1, v10, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->networkTypeIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$showSliceAttribution$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$showSliceAttribution$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v10, v12, v13, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v12

    invoke-static {v10, v1, v12, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->showSliceAttribution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->carrierEnabledSatelliteFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isNonTerrestrial$1;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isNonTerrestrial$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v13, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v10, v12, v13, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    :goto_0
    const-string v9, "("

    const-string v12, ")isNonTerrestrial"

    invoke-static {v6, v9, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Intr"

    const/4 v15, 0x0

    invoke-static {v10, v7, v13, v12, v15}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    invoke-static {v10, v1, v15, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isNonTerrestrial:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$level$1;

    const/4 v12, 0x0

    invoke-direct {v15, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$level$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->primaryLevel:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 p20, v10

    iget-object v10, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaLevel:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 p5, v2

    iget-object v2, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v21, v4

    move-object/from16 v4, p4

    invoke-static {v2, v12, v10, v4, v15}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v2, v1, v10, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iget-object v10, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$1;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataConnectionState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v12, v15}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    invoke-static {v12, v1, v15, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v12, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v15, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v16, v15

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v15, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$2;

    invoke-direct {v15, v8}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v8, ")isSimOn"

    invoke-static {v6, v9, v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v15, v7, v13, v8, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    invoke-static {v8, v1, v9, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isSimOn:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v8, "isSim1On"

    iget-object v9, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->sim1On:Lkotlinx/coroutines/flow/StateFlow;

    move/from16 p22, v6

    const/4 v6, 0x0

    invoke-static {v9, v7, v13, v8, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    invoke-static {v8, v1, v9, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isSim1On:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const v8, 0x7fffffff

    iget v9, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->subId:I

    if-ne v9, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDummySubId:Z

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$roamingId$1;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$roamingId$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v9, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v19, v15

    move-object/from16 v22, v16

    move-object v15, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v21

    move-object/from16 v18, v9

    move-object/from16 v20, v8

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v1, v15, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->roamingId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$showExclamationMark$1;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$showExclamationMark$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v15, p2

    move-object/from16 v6, p11

    invoke-static {v15, v6, v12, v8}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v6

    const/4 v8, 0x3

    invoke-static {v11, v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v1, v15, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updateSignalTransition$1;

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$updateSignalTransition$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v2, v10, v8}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v8

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v8, v1, v9, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1;

    const/4 v15, 0x0

    invoke-direct {v9, v0, v15}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    move-object/from16 p25, v8

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v8

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9, v1, v8, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$cellularShownLevel$1;

    const/4 v15, 0x0

    invoke-direct {v9, v0, v15}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$cellularShownLevel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 p26, v8

    move-object/from16 v8, v22

    invoke-static {v2, v12, v15, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v9

    move-object/from16 v17, v6

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9, v1, v6, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->cellularShownLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$contentDescription$1;

    const/4 v15, 0x0

    invoke-direct {v9, v0, v15}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$contentDescription$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v15, v6, v10, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    move-object/from16 v16, v10

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    new-instance v15, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    sget-object v18, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    move-object/from16 v20, v6

    const/16 v19, 0x0

    aget v6, v18, v19

    invoke-direct {v15, v6}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-static {v9, v1, v10, v15}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v6, p15

    check-cast v6, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;->isUserSetUp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p16 .. p16}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-interface/range {p16 .. p16}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$wifiConnected$1;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$wifiConnected$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, v9, v10, v15}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isVoWifiConnected$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$isVoWifiConnected$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v15, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v19, v3

    move-object/from16 v3, v21

    invoke-direct {v10, v15, v3, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v15

    invoke-static {v10, v1, v15, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isVoWifiConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 p8, v4

    move-object/from16 p9, p6

    move-object/from16 p10, v12

    move-object/from16 p11, v8

    move-object/from16 p12, v6

    move-object/from16 p13, v2

    move-object/from16 p14, p7

    move-object/from16 p15, v9

    filled-new-array/range {p8 .. p15}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const-string/jumbo v4, "showDisabledData"

    const/4 v6, 0x0

    invoke-static {v2, v7, v13, v4, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v2, v1, v6, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$otherSlotInCallState$1;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$otherSlotInCallState$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v10, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v15, p23

    invoke-direct {v9, v10, v15, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v11, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v9, v1, v6, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->otherSlotInCallState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 p2, v2

    move-object/from16 p3, p5

    move-object/from16 p4, v12

    move-object/from16 p5, v19

    move-object/from16 p6, v4

    move-object/from16 p7, v3

    filled-new-array/range {p2 .. p7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3;

    invoke-direct {v6, v4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    invoke-static {v4, v7, v13, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-static {v4, v1, v10, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledDataIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$disabledActivityIcon$1;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$disabledActivityIcon$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v9, v2, v4, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const-string v4, "disabledActivityIcon"

    const/4 v6, 0x0

    invoke-static {v9, v7, v13, v4, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/4 v9, 0x3

    invoke-static {v11, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v1, v10, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledActivityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->satelliteLevel:Lkotlinx/coroutines/flow/StateFlow;

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$satelliteShownLevel$1;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$satelliteShownLevel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-object/from16 v9, v18

    invoke-direct {v6, v9, v12, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    move-object v4, v6

    :goto_2
    const-string/jumbo v6, "satelliteShownLevel"

    const/4 v9, 0x0

    invoke-static {v4, v7, v13, v6, v9}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v11, v6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v1, v10, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iget-object v6, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 p2, v20

    move-object/from16 p3, v16

    move-object/from16 p4, v17

    move-object/from16 p5, p19

    move-object/from16 p6, v12

    move-object/from16 p7, v8

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    move-object/from16 p10, v6

    move-object/from16 p11, p25

    move-object/from16 p12, p26

    filled-new-array/range {p2 .. p12}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4;

    invoke-direct {v6, v2, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->cellularIcon:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$4;

    const/16 v2, 0x72f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x7f0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x84e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x862

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x9fc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v12, 0x2718

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x7e6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x737

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x738

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v12

    move-object/from16 p8, v13

    move-object/from16 p9, v14

    move-object/from16 p10, v15

    filled-new-array/range {p2 .. p10}, [Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierIdOfVzwMVNO:[Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    move-object/from16 v6, p21

    move/from16 v9, p22

    invoke-interface {v6, v2, v9, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$3;

    iget-object v4, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$satelliteIcon$2;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$satelliteIcon$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v5, v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v6, v4, v5, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    move-object v2, v6

    :goto_3
    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->satelliteIcon:Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    move-object/from16 v4, v20

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object/from16 v6, v17

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {p19 .. p19}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x10

    move-object/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v8

    move/from16 p7, v10

    move/from16 p8, v12

    move-object/from16 p9, v9

    invoke-direct/range {p2 .. p9}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelIcon$lambda$8$$inlined$flatMapLatest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelIcon$lambda$8$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    move-object/from16 v5, p20

    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const-string v5, "icon"

    invoke-static {v4, v7, v5, v2}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v11, v5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v4, v1, v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalLevelIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$4;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    invoke-static {v11, v5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lkotlinx/coroutines/flow/StateFlow;ZLandroid/os/Handler;Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    const/high16 v0, 0x2000000

    and-int v0, p27, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;

    invoke-direct {v0}, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;-><init>()V

    move-object/from16 v27, v0

    goto :goto_0

    :cond_0
    move-object/from16 v27, p26

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    invoke-direct/range {v1 .. v27}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileRoamingIconResource;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lkotlinx/coroutines/flow/StateFlow;ZLandroid/os/Handler;Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;)V

    return-void
.end method
