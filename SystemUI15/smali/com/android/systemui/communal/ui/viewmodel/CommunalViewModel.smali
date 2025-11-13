.class public final Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;
.super Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _currentPopup:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isMediaHostVisible:Lkotlinx/coroutines/flow/Flow;

.field public final communalBackground:Lkotlinx/coroutines/flow/Flow;

.field public final communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final currentPopup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public delayedHideCurrentPopupJob:Lkotlinx/coroutines/Job;

.field public frozenCommunalContent:Ljava/util/List;

.field public final isCommunalContentFlowFrozen:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isEmptyState:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isFocusable:Lkotlinx/coroutines/flow/Flow;

.field public final latestCommunalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final resources:Landroid/content/res/Resources;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final showGestureIndicator:Lkotlinx/coroutines/flow/Flow;

.field public final touchesAllowed:Lkotlinx/coroutines/flow/Flow;

.field public final widgetAccessibilityDelegate:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$widgetAccessibilityDelegate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    invoke-direct {p0, p6, p7, p11}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;)V

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->resources:Landroid/content/res/Resources;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p10, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    new-instance p2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$_isMediaHostVisible$1;

    const/4 p3, 0x0

    invoke-direct {p2, p11, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$_isMediaHostVisible$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p6, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$_isMediaHostVisible$2;

    invoke-direct {p6, p11, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$_isMediaHostVisible$2;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p6, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_isMediaHostVisible:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "CommunalViewModel"

    invoke-direct {p1, p12, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->logger:Lcom/android/systemui/log/core/Logger;

    iget-object p1, p9, Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;->isTutorialAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$latestCommunalContent$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$latestCommunalContent$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p6, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object p6, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->latestCommunalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p2, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    sget-object p6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p4, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isFinishedInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    iget-object p12, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isAbleToDream:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p2, p12}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p12

    iget-object v0, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardOccluded:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {p9, v0, p12}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    invoke-virtual {p2, p9}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    invoke-static {p9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    new-instance p12, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isCommunalContentFlowFrozen$1;

    invoke-direct {p12, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isCommunalContentFlowFrozen$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p9, p12}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p9, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$communalContent$1;

    invoke-direct {p9, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$communalContent$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p9}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    new-instance p12, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$communalContent$2;

    invoke-direct {p12, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$communalContent$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p9, p12}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object p9, p7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetContent:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance p12, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$special$$inlined$map$1;

    invoke-direct {p12, p9}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p12}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p9

    new-instance p12, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isEmptyState$2;

    invoke-direct {p12, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isEmptyState$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p9, p12}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEmptyState:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p9

    iput-object p9, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_currentPopup:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p9

    iput-object p9, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->currentPopup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p4, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isFinishedInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    check-cast p10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p6, p10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p9, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isFocusable$1;

    invoke-direct {p9, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$isFocusable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p3, p7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p4, p3, p6, p9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isFocusable:Lkotlinx/coroutines/flow/Flow;

    new-instance p3, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$widgetAccessibilityDelegate$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$widgetAccessibilityDelegate$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->widgetAccessibilityDelegate:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$widgetAccessibilityDelegate$1;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p11, p3}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->setExpansion(F)V

    iget-object p3, p11, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p4, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    const/4 p6, 0x1

    if-eq p6, p4, :cond_0

    iput-boolean p6, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    iget-object p4, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-boolean p4, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean p6, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object p1, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-object p1, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_0
    const/4 p1, 0x4

    invoke-virtual {p11, p1}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->init(I)V

    iget-object p1, p10, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->touchesAllowed:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->showGestureIndicator:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p8, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->communalBackground:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalBackground:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getCommunalContent()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    return-object p0
.end method

.method public final getCurrentPopup()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->currentPopup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getWidgetAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->widgetAccessibilityDelegate:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$widgetAccessibilityDelegate$1;

    return-object p0
.end method

.method public final isCommunalContentVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isEmptyState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEmptyState:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    return-object p0
.end method

.method public final isFocusable()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isFocusable:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final onDismissCtaTile()V
    .locals 3

    new-instance v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$onDismissCtaTile$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$onDismissCtaTile$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onHidePopup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->setCurrentPopupType(Lcom/android/systemui/communal/ui/viewmodel/PopupType;)V

    return-void
.end method

.method public final onOpenEnableWidgetDialog()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onOpenEnableWorkProfileDialog()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onOpenWidgetEditor(Ljava/lang/String;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    sget-object v1, Lcom/android/systemui/communal/shared/model/EditModeState;->STARTING:Lcom/android/systemui/communal/shared/model/EditModeState;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->_editModeState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editWidgetsActivityStarter:Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarter;

    check-cast p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "preselected_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "open_widget_picker_on_start"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public final onShowCustomizeWidgetButton()V
    .locals 1

    sget-object v0, Lcom/android/systemui/communal/ui/viewmodel/PopupType$CustomizeWidgetButton;->INSTANCE:Lcom/android/systemui/communal/ui/viewmodel/PopupType$CustomizeWidgetButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->setCurrentPopupType(Lcom/android/systemui/communal/ui/viewmodel/PopupType;)V

    return-void
.end method

.method public final setCurrentPopupType(Lcom/android/systemui/communal/ui/viewmodel/PopupType;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->_currentPopup:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->delayedHideCurrentPopupJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$setCurrentPopupType$1;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel$setCurrentPopupType$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->delayedHideCurrentPopupJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->delayedHideCurrentPopupJob:Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
