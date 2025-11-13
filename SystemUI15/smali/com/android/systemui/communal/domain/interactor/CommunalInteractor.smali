.class public final Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;


# instance fields
.field public final _editModeOpen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userActivity:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final communalPrefsRepository:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepository;

.field public final communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

.field public final communalWidgets:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final ctaTileContent:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$5;

.field public final desiredScene:Lkotlinx/coroutines/flow/StateFlow;

.field public final dreamFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final editWidgetsActivityStarter:Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarter;

.field public final isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCommunalShowing:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

.field public final isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final mediaRepository:Lcom/android/systemui/communal/data/repository/CommunalMediaRepository;

.field public final showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final smartspaceTargets:Lkotlinx/coroutines/flow/Flow;

.field public final transitionState:Lkotlinx/coroutines/flow/StateFlow;

.field public final tutorialContent:Ljava/util/List;

.field public final updateOnWorkProfileBroadcastReceived:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final userActivity:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final widgetContent:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->Companion:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;Lcom/android/systemui/communal/data/repository/CommunalPrefsRepository;Lcom/android/systemui/communal/data/repository/CommunalMediaRepository;Lcom/android/systemui/smartspace/data/repository/SmartspaceRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarter;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p16

    move-object/from16 v9, p19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object v3, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    iput-object v4, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalPrefsRepository:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepository;

    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->mediaRepository:Lcom/android/systemui/communal/data/repository/CommunalMediaRepository;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    move-object/from16 v10, p12

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editWidgetsActivityStarter:Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarter;

    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v10, p15

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userManager:Landroid/os/UserManager;

    iput-object v8, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    new-instance v10, Lcom/android/systemui/log/core/Logger;

    const-string v11, "CommunalInteractor"

    move-object/from16 v12, p18

    invoke-direct {v10, v12, v11}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->_editModeOpen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v11, v7, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v11, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v12, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v13, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v12, v13}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {v11, v13, v5}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v11, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalAvailable$1;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalAvailable$1;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v13, v5, v11}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    const-string v5, ""

    const-string v11, "isCommunalAvailable"

    const/4 v14, 0x0

    invoke-static {v13, v9, v5, v11, v14}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v11

    sget-object v13, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v15, 0x3

    invoke-static {v13, v15}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    const/4 v12, 0x1

    invoke-static {v11, v1, v14, v12}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v14, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$filter$1;

    iget-object v12, v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    invoke-direct {v14, v12}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v12, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$showCommunalFromOccluded$3;->INSTANCE:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$showCommunalFromOccluded$3;

    new-instance v15, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v15, v14, v11, v12}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v12, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$1;

    invoke-direct {v12, v15}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v12, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v12, 0x3

    invoke-static {v13, v12}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v14

    invoke-static {v2, v1, v14, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v12, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v2, v14, v12, v15}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$2;

    invoke-direct {v6, v2}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {v6, v1, v2, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->dreamFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v8, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->desiredScene:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v2, v8, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->transitionState:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->transitionState:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {v6, v10, v2, v10}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->_userActivity:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userActivity:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalShowing$1;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v10, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$flatMapLatest$1;

    move-object/from16 v12, p17

    invoke-direct {v2, v6, v12, v0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;)V

    invoke-static {v10, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalShowing$3;

    invoke-direct {v10, v0, v6}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$isCommunalShowing$3;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v6, v2, v10}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    const-string v2, "isCommunalShowing"

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v2, v10}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v13, v5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v6

    const/4 v5, 0x1

    invoke-static {v2, v1, v6, v5}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalShowing:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v1, v8, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v8, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    move-object/from16 p13, p3

    move-object/from16 p14, v1

    move-object/from16 p15, v6

    move/from16 p16, v2

    move-object/from16 p17, v5

    move/from16 p18, v8

    invoke-static/range {p13 .. p18}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v6, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {v1, v5, v0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;)V

    invoke-static {v11, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalWidgets:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-object v1, v3

    check-cast v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    new-instance v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$3;

    iget-object v1, v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgets:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;)V

    new-instance v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;

    invoke-direct {v1, v0, v5}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v8, v7, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->allowedByDevicePolicyForWorkProfile:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v3, v2, v8, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;

    invoke-direct {v1, v0, v5}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v2, v7, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->communalWidgetCategories:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3, v2, v6, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetContent:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/smartspace/flags/Flags;->remoteViews()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p7

    check-cast v1, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->communalSmartspaceTargets:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    new-instance v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$4;

    invoke-direct {v2, v1}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    :goto_0
    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->smartspaceTargets:Lkotlinx/coroutines/flow/Flow;

    move-object v1, v4

    check-cast v1, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->isCtaDismissed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$5;

    invoke-direct {v2, v1}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->ctaTileContent:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$special$$inlined$map$5;

    new-instance v3, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->FULL:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const/4 v2, 0x0

    invoke-direct {v3, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->THIRD:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v5, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    const/4 v2, 0x2

    invoke-direct {v5, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v6, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    const/4 v2, 0x3

    invoke-direct {v6, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v7, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const/4 v2, 0x4

    invoke-direct {v7, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v8, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    const/4 v2, 0x5

    invoke-direct {v8, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v9, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    const/4 v2, 0x6

    invoke-direct {v9, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    new-instance v10, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    const/4 v2, 0x7

    invoke-direct {v10, v2, v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;-><init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    filled-new-array/range {v3 .. v10}, [Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->tutorialContent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getOngoingContent(Z)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->mediaRepository:Lcom/android/systemui/communal/data/repository/CommunalMediaRepository;

    check-cast v0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/communal/data/repository/CommunalMediaRepositoryImpl;->mediaModel:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v2, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->smartspaceTargets:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
