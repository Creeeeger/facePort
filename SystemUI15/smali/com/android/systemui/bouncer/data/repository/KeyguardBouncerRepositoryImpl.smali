.class public final Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;


# instance fields
.field public final _alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _keyguardAuthenticatedPrimaryAuth:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _lastShownSecurityMode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _panelExpansionAmount:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerInflate:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerScrimmed:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _primaryBouncerUpdating:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userRequestedBouncerWhenAlreadyAuthenticated:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public bouncerDismissActionModel:Lcom/android/systemui/bouncer/shared/model/BouncerDismissActionModel;

.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final isBackButtonEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAuthenticatedPrimaryAuth:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lastShownSecurityMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerInflate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerUpdating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resourceUpdateRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final showMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userRequestedBouncerWhenAlreadyAuthenticated:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v7, 0x0

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerScrimmed:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_panelExpansionAmount:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->isBackButtonEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v13}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v13, v13, v7, v14}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v15

    invoke-static {v15}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->keyguardAuthenticatedPrimaryAuth:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {v13, v13, v7, v14}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v14

    invoke-static {v14}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->userRequestedBouncerWhenAlreadyAuthenticated:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v14}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->showMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_lastShownSecurityMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v15}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->lastShownSecurityMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->resourceUpdateRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v13}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v16

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v15

    move-object/from16 v16, v13

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerInflate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v13}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerInflate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerUpdating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerUpdating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "PrimaryBouncerShow"

    const-string v3, ""

    const/4 v13, 0x0

    invoke-static {v4, v2, v3, v0, v13}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$1;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v13, v0, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "PrimaryBouncerShowingSoon"

    const/4 v4, 0x0

    invoke-static {v5, v2, v3, v0, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "PrimaryBouncerStartingToHide"

    invoke-static {v6, v2, v3, v0, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;

    invoke-direct {v0, v8}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v5, "PrimaryBouncerStartingDisappearAnimation"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "PrimaryBouncerScrimmed"

    invoke-static {v9, v2, v3, v0, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$2;

    invoke-direct {v0, v10}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v4, "PanelExpansionAmountMillis"

    const/4 v5, -0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, v11}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$3;

    invoke-direct {v4, v0}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v0, "KeyguardPosition"

    invoke-static {v4, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, v12}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v4, "IsBackButtonEnabled"

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$4;

    invoke-direct {v0, v14}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v4, "ShowMessage"

    const/4 v6, 0x0

    invoke-static {v0, v2, v4, v6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "ResourceUpdateRequests"

    invoke-static {v7, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "IsAlternateBouncerUIAvailable"

    invoke-static {v15, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const-string v0, "AlternateBouncerVisible"

    move-object/from16 v4, v16

    invoke-static {v4, v2, v3, v0, v5}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$5;

    move-object/from16 v3, v17

    invoke-direct {v0, v3}, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v3, "lastShownSecurityMode"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
