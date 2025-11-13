.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _nonSplitShadeNotifciationPlaceholderBounds:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final _notificationPlaceholderBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alternateBouncerShowing:Lkotlinx/coroutines/flow/Flow;

.field public final ambientIndicationVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final animateDozingTransitions$delegate:Lkotlin/Lazy;

.field public final biometricUnlockState:Lkotlinx/coroutines/flow/StateFlow;

.field public final clockShouldBeCentered:Lkotlinx/coroutines/flow/Flow;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final dismissAlpha:Lkotlinx/coroutines/flow/Flow;

.field public final dozeAmount:Lkotlinx/coroutines/flow/Flow;

.field public final dozeTimeTick:Lkotlinx/coroutines/flow/StateFlow;

.field public final dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

.field public final fromGoneTransitionInteractor:Ljavax/inject/Provider;

.field public final fromLockscreenTransitionInteractor:Ljavax/inject/Provider;

.field public final isAbleToDream:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/StateFlow;

.field public final isAodAvailable:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDozing:Lkotlinx/coroutines/flow/StateFlow;

.field public final isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

.field public final isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isPulsing:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$map$1;

.field public final isSecureCameraActive$delegate:Lkotlin/Lazy;

.field public final keyguardAlpha:Lkotlinx/coroutines/flow/StateFlow;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardTranslationY:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lastRootViewTapPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final notificationContainerBounds$delegate:Lkotlin/Lazy;

.field public final onCameraLaunchDetected:Lkotlinx/coroutines/flow/Flow;

.field public final primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final statusBarState:Lkotlinx/coroutines/flow/StateFlow;

.field public final topClippingBounds$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;",
            "Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->fromGoneTransitionInteractor:Ljavax/inject/Provider;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->fromLockscreenTransitionInteractor:Ljavax/inject/Provider;

    new-instance v11, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->_notificationPlaceholderBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->_nonSplitShadeNotifciationPlaceholderBounds:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;

    move-object/from16 v6, p11

    invoke-direct {v5, v0, v6, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Ljavax/inject/Provider;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-static {v5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->notificationContainerBounds$delegate:Lkotlin/Lazy;

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->linearDozeAmount:Lkotlinx/coroutines/flow/Flow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dozeAmount:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTimeTick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dozeTimeTick:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isAodAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAodAvailable:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$map$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isPulsing:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$map$1;

    iget-object v6, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreamingWithOverlay:Lkotlinx/coroutines/flow/Flow;

    iget-object v9, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v9, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v9, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1;

    invoke-direct {v10, v0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->onCameraLaunchDetected:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {v6, v8}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$1;

    invoke-direct {v8, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v9, v6, v5, v8}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v5, p3

    iget-object v5, v5, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAwake:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v5, v6}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    const-wide/16 v8, 0x32

    invoke-static {v5, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->debounce(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v4, v9, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAbleToDream:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    iput-object v9, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    iget-object v15, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardDismissible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v15, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v10, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    iput-object v10, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    iget-object v11, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

    iput-object v11, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/Flow;

    new-instance v11, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$topClippingBounds$2;

    invoke-direct {v11, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$topClippingBounds$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {v11}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->topClippingBounds$delegate:Lkotlin/Lazy;

    iget-object v11, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastRootViewTapPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->lastRootViewTapPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v11, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->ambientIndicationVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->ambientIndicationVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v11, p4

    check-cast v11, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object v12, v11, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v12, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v12, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;

    invoke-direct {v12, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$alternateBouncerShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v11, v11, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v11, v5, v12}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->alternateBouncerShowing:Lkotlinx/coroutines/flow/Flow;

    iget-object v12, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v12, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->statusBarState:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->biometricUnlockState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isKeyguardVisible$1;

    invoke-direct {v5, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isKeyguardVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v11, v9, v10, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v11, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {v5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isSecureCameraActive$delegate:Lkotlin/Lazy;

    iget-object v5, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardAlpha:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v10, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v11, v5, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v13, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v14, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/util/kotlin/Utils$Companion;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$filter$1;

    invoke-direct {v5, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1;

    invoke-direct {v3, v5, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$dismissAlpha$3;

    invoke-direct {v3, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$dismissAlpha$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v9, v3, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dismissAlpha:Lkotlinx/coroutines/flow/Flow;

    const v3, 0x7f07050f

    move-object/from16 v5, p5

    invoke-virtual {v5, v3}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {v5, v7, v2, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTranslationY:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->clockShouldBeCentered:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->clockShouldBeCentered:Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$animateDozingTransitions$2;

    move-object/from16 v3, p8

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$animateDozingTransitions$2;-><init>(Ljavax/inject/Provider;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->animateDozingTransitions$delegate:Lkotlin/Lazy;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isEncryptedOrLockdown:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static cameraLaunchSourceIntToModel(I)Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->QUICK_AFFORDANCE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CameraLaunchSourceModel int value: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->LIFT_TRIGGER:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->POWER_DOUBLE_TAP:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->WIGGLE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    :goto_0
    return-object p0
.end method

.method public static cameraLaunchSourceModelToInt(Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;)I
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid CameraLaunchSourceModel model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final isKeyguardShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    return p0
.end method

.method public final showKeyguard()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->fromGoneTransitionInteractor:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$showKeyguard$$inlined$launch$default$1;

    const-string v2, "FromGoneTransitionInteractor#showKeyguard"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$showKeyguard$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x2

    invoke-static {p0, v0, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
