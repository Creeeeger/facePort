.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;


# instance fields
.field public final DeXWifiIcon:Lkotlinx/coroutines/flow/Flow;

.field public final activity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final context:Landroid/content/Context;

.field public final updateDeXWifiIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModel;Ljava/util/function/Supplier;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Landroid/content/Context;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/wifi/SemWifiManager;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModel;",
            "Ljava/util/function/Supplier<",
            "Lkotlinx/coroutines/flow/Flow;",
            ">;",
            "Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/log/table/TableLogBuffer;",
            "Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/samsung/android/wifi/SemWifiManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->context:Landroid/content/Context;

    move-object/from16 v9, p6

    check-cast v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    iget-object v10, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isEnabled:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v15, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->hideDuringMobileSwitching:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiConnectivityTestReported:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v11, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isDefault:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v12, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->isForceHidden:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$3;

    iget-object v5, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    iget-object v4, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiIconGroup:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-object v13, v5

    move-object v14, v4

    move-object/from16 v16, v0

    filled-new-array/range {v10 .. v16}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;

    move-object v0, v10

    move-object/from16 v2, p10

    move-object/from16 v3, p0

    move-object v11, v4

    move-object/from16 v4, p8

    move-object v12, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    const-string v1, ""

    move-object/from16 v2, p5

    invoke-static {v10, v2, v1, v0}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    invoke-static {v1, v7, v4, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->wifiIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;-><init>(ZZ)V

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activity$1$1;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activity$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v13, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->activity:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v9, v9, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->ssid:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$special$$inlined$map$1;

    invoke-direct {v10, v13, v9, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    invoke-static {v10, v7, v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;

    invoke-direct {v9, v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v11, v12, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/common/shared/model/Icon$Resource;

    sget-object v12, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ACTIVITY:[I

    aget v4, v12, v4

    invoke-direct {v11, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    invoke-static {v9, v7, v10, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$1;

    invoke-direct {v9, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v7, v10, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$2;

    invoke-direct {v9, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v10

    invoke-static {v9, v7, v10, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v9, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$3;

    invoke-direct {v9, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    invoke-static {v9, v7, v1, v11}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;

    invoke-direct {v1, v8, v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;-><init>(Lcom/android/systemui/util/DesktopManager;Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v9, v0, v4, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModelKt;->DEFAULT_DEX_STATUS_BAR_WIFI_ICON_MODEL:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    invoke-static {v9, v7, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->updateDeXWifiIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1;

    invoke-direct {v1, v8, v6, v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1;-><init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->DeXWifiIcon:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getActivityIcon()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->activityIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getDeXWifiIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->DeXWifiIcon:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getUpdateDeXWifiIconModel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->updateDeXWifiIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWifiIcon()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->wifiIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method
