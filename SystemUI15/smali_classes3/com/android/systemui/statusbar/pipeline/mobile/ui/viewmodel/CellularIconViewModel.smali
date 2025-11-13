.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;


# instance fields
.field public final activity:Lkotlinx/coroutines/flow/StateFlow;

.field public final activityContainerVisible:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activityInVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activityOutVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final anyChanges:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public dataServiceAcquired:Z

.field public final desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final dexStatusBarIcon:Lkotlinx/coroutines/flow/Flow;

.field public final icon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final networkTypeBackground:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final roaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final roamingIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final simpleLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

.field public final slotId:I

.field public final subscriptionId:I

.field public final updateDeXStatusBarIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public voiceServiceAcquired:Z


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v12, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->subscriptionId:I

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    const v1, 0x7fffffff

    const/4 v13, 0x0

    if-ne v3, v1, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    move v2, v1

    :goto_0
    iput v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->slotId:I

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    move-object/from16 v15, p2

    check-cast v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v11, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v10, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v10, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v9, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->networkTypeIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget-object v8, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v16

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v17

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result v18

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v1, v14

    move/from16 v3, p1

    move-object/from16 v4, p8

    move-object/from16 v22, v8

    move/from16 v8, v16

    move-object/from16 v23, v9

    move/from16 v9, v17

    move-object/from16 p1, v10

    move/from16 v10, v18

    move-object/from16 v24, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;-><init>(IILjava/lang/String;ZZLcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;IIZLjava/lang/String;)V

    iput-object v14, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->simpleLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    move-object/from16 v1, p4

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->hasDataCapabilities:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$isVisible$1;

    invoke-direct {v9, v0, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$isVisible$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p3

    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v5, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v6, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/Flow;

    iget-object v7, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isSimOn:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isSim1On:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v3, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    const-string/jumbo v4, "vm"

    const-string/jumbo v5, "visible"

    invoke-static {v1, v3, v4, v5, v13}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v12, v7, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->signalLevelIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->icon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v9, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v10, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v11, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isDataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v2, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v6, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isVoWifiConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v16, p1

    move-object/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    filled-new-array/range {v16 .. v21}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$combine$1;

    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const-string/jumbo v6, "showNetworkTypeIcon"

    invoke-static {v2, v3, v4, v6, v13}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    invoke-static {v2, v12, v9, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v11, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledDataIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v13, v23

    invoke-static {v13, v2, v11, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    move-object/from16 v17, v7

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v7

    invoke-static {v9, v12, v7, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v7, Lcom/android/systemui/flags/Flags;->NEW_NETWORK_SLICE_UI:Lcom/android/systemui/flags/ReleasedFlag;

    move-object/from16 v9, p5

    check-cast v9, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v9, v7}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v7, v10}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 p4, v6

    const/4 v9, 0x3

    goto :goto_3

    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$1;

    iget-object v9, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->showSliceAttribution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v7, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    goto :goto_2

    :goto_3
    invoke-static {v5, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v7, v12, v6, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->networkTypeBackground:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string/jumbo v6, "roaming"

    iget-object v7, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->isRoaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v10, 0x0

    invoke-static {v7, v3, v4, v6, v10}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v5, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v3, v12, v4, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->roaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$roamingIcon$1;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$roamingIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v7, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->roamingId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->otherSlotInCallState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3, v7, v11, v10, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v3

    invoke-static {v5, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v3, v12, v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->roamingIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->activity:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$2;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v5, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v7

    invoke-static {v6, v12, v7, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityInVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$3;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v5, v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v7

    invoke-static {v6, v12, v7, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityOutVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v6, v8}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityContainerVisible:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$activityIcon$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$activityIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v8, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledActivityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v4, v13, v2, v8, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v2, v12, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v15, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v8, v12, v6, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;

    invoke-direct {v4, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    move-object/from16 v6, v24

    invoke-static {v6, v8, v13, v9, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$2;

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v8, v4, v6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    const/4 v4, 0x3

    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    invoke-static {v8, v12, v6, v14}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->anyChanges:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;

    invoke-direct {v4, v0, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v1

    move-object/from16 v18, p4

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v5, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModelKt;->DEFAULT_DEX_STATUS_BAR_ICON_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    invoke-static {v1, v12, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->updateDeXStatusBarIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$dexStatusBarIcon$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$dexStatusBarIcon$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->dexStatusBarIcon:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final access$sendDeXStatusBarIconModel(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    iget v2, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p1, :cond_2

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    :cond_2
    move v5, v1

    if-eqz p1, :cond_3

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    if-eqz p1, :cond_4

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    if-eqz p1, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    move v8, v1

    goto :goto_4

    :cond_5
    move v8, v0

    :goto_4
    if-eqz p1, :cond_6

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    move v9, v1

    goto :goto_5

    :cond_6
    move v9, v0

    :goto_5
    if-eqz p1, :cond_7

    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    :cond_7
    move v10, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface/range {v2 .. v10}, Lcom/android/systemui/util/DesktopManager;->setMobileIcon(ZIIIIZII)V

    return-void
.end method


# virtual methods
.method public final getActivityContainerVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityContainerVisible:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-object p0
.end method

.method public final getActivityIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getActivityInVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityInVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getActivityOutVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->activityOutVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getAnyChanges()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->anyChanges:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getContentDescription()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->contentDescription:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getDexStatusBarIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->dexStatusBarIcon:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->icon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getNetworkTypeBackground()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->networkTypeBackground:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getNetworkTypeIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->networkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getRoaming()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->roaming:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getRoamingIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->roamingIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getShadowDrawable(Landroid/view/View;I)Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float v1, p1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    new-instance v1, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)V

    return-object v1
.end method

.method public final getSubscriptionId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->subscriptionId:I

    return p0
.end method

.method public final getUpdateDeXStatusBarIconModel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->updateDeXStatusBarIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getVoiceNoServiceIcon()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->voiceNoServiceIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isVisible()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method
