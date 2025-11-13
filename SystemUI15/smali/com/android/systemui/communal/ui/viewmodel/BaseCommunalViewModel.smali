.class public abstract Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _selectedKey:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

.field public final currentPopup:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final currentScene:Lkotlinx/coroutines/flow/Flow;

.field public final isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isEmptyState:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final isFocusable:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public final reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->mediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iget-object p1, p1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->currentScene:Lkotlinx/coroutines/flow/Flow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isFocusable:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->_selectedKey:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p3, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p3, p2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->currentPopup:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEmptyState:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-void
.end method

.method public static synthetic onOpenWidgetEditor$default(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Ljava/lang/String;ZI)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->onOpenWidgetEditor(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public abstract getCommunalContent()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
.end method

.method public getCurrentPopup()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->currentPopup:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-object p0
.end method

.method public getReorderingWidgets()Lkotlinx/coroutines/flow/StateFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->reorderingWidgets:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public getWidgetAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCommunalContentVisible()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isCommunalContentVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmptyState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEmptyState:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-object p0
.end method

.method public isFocusable()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isFocusable:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public onDeleteWidget(I)V
    .locals 0

    return-void
.end method

.method public onDismissCtaTile()V
    .locals 0

    return-void
.end method

.method public onHidePopup()V
    .locals 0

    return-void
.end method

.method public onOpenEnableWidgetDialog()V
    .locals 0

    return-void
.end method

.method public onOpenEnableWorkProfileDialog()V
    .locals 0

    return-void
.end method

.method public onOpenWidgetEditor(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onReorderWidgetCancel()V
    .locals 0

    return-void
.end method

.method public onReorderWidgetEnd()V
    .locals 0

    return-void
.end method

.method public onReorderWidgetStart()V
    .locals 0

    return-void
.end method

.method public onReorderWidgets(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public onShowCustomizeWidgetButton()V
    .locals 0

    return-void
.end method

.method public final setSelectedKey(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->_selectedKey:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
