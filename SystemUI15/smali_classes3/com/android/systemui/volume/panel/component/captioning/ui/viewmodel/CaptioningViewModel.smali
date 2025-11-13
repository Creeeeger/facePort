.class public final Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buttonViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final captioningInteractor:Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->captioningInteractor:Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p1, p2, Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;->repository:Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepository;

    check-cast p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->isSystemAudioCaptioningEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel$special$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->buttonViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final setIsSystemAudioCaptioningEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_LIVE_CAPTION_TOGGLE_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel$setIsSystemAudioCaptioningEnabled$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel$setIsSystemAudioCaptioningEnabled$1;-><init>(Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
