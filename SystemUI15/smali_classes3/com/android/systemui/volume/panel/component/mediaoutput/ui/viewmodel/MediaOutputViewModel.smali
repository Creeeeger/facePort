.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionsInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;

.field public final connectedDeviceViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final context:Landroid/content/Context;

.field public final deviceIconViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final enabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mediaOutputComponentInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->actionsInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->mediaOutputComponentInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p1, p4, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->mediaOutputModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1;

    invoke-direct {p4, p3, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p5, 0x0

    invoke-static {p4, p2, p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->connectedDeviceViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2;

    invoke-direct {v0, p4}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0, p2, p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->deviceIconViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$3;

    invoke-direct {p4, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, p2, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->enabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final onBarClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_MEDIA_OUTPUT_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->mediaOutputComponentInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->mediaOutputModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/panel/shared/model/Result;

    instance-of v1, v0, Lcom/android/systemui/volume/panel/shared/model/Result$Data;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/volume/panel/shared/model/Result$Data;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/volume/panel/shared/model/Result$Data;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->actionsInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    const-string v3, "media_output"

    const/16 v4, 0x3a

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v6, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v2

    :cond_2
    move-object v8, v2

    const/4 v7, 0x0

    const/16 v10, 0x18

    iget-object v5, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShowWithController$default(Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;Landroid/media/session/MediaSession$Token;I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputActionsInteractor;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    :goto_2
    return-void
.end method
