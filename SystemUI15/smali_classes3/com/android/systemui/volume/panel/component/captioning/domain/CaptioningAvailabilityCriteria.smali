.class public final Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/domain/ComponentAvailabilityCriteria;


# instance fields
.field public final availability:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p1, p1, Lcom/android/settingslib/view/accessibility/domain/interactor/CaptioningInteractor;->repository:Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepository;

    check-cast p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->isSystemAudioCaptioningUiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria$availability$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria$availability$1;-><init>(Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {v0, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria;->availability:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method


# virtual methods
.method public final isAvailable()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/captioning/domain/CaptioningAvailabilityCriteria;->availability:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-object p0
.end method
