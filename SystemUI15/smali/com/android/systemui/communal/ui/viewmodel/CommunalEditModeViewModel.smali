.class public final Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;
.super Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final canShowEditMode:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$filter$1;

.field public final communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final communalSettingsInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;

.field public final isCommunalContentVisible:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$map$1;

.field public final isEditMode:Z

.field public final isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/LogBuffer;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;)V

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalSettingsInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p3, Lcom/android/systemui/log/core/Logger;

    const-string p5, "CommunalEditModeViewModel"

    invoke-direct {p3, p7, p5}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->isEditMode:Z

    iget-object p1, p1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->editModeState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$map$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->isCommunalContentVisible:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$map$1;

    sget-object p1, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    sget-object p3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p4, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isFinishedInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iget-object p4, p2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array {p3, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$filter$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->canShowEditMode:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$filter$1;

    new-instance p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$communalContent$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$communalContent$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object p4, p2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetContent:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    invoke-direct {p3, p4, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->_reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p1, p2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getCommunalContent()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalContent:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    return-object p0
.end method

.method public final getReorderingWidgets()Lkotlinx/coroutines/flow/StateFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->_reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final isCommunalContentVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->isCommunalContentVisible:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$special$$inlined$map$1;

    return-object p0
.end method

.method public final isEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->isEditMode:Z

    return p0
.end method

.method public final onDeleteWidget(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->deleteWidget(I)V

    return-void
.end method

.method public final onOpenWidgetPicker(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroidx/activity/result/ActivityResultRegistry$2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroidx/activity/result/ActivityResultLauncher;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v6, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final onReorderWidgetCancel()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->_reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onReorderWidgetEnd()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->_reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onReorderWidgetStart()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->setSelectedKey(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->_reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onReorderWidgets(Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->updateWidgetOrder(Ljava/util/Map;)V

    return-void
.end method
