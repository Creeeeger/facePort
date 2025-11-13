.class public final Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alphaForBrightnessMirror:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final constrainedAvailableSpace:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCurrentGestureOverscroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isExpandingFromHeadsUp:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final placeholderRepository:Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;

.field public final scrolledToTop:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeScrimBounds:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeScrimRounding:Lkotlinx/coroutines/flow/Flow;

.field public final syntheticScroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final viewHeightRepository:Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationViewHeightRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationViewHeightRepository;Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->viewHeightRepository:Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationViewHeightRepository;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->shadeScrimBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->shadeScrimBounds:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p3, p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor$shadeScrimRounding$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor$shadeScrimRounding$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p3, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->shadeScrimRounding:Lkotlinx/coroutines/flow/Flow;

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->alphaForBrightnessMirror:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->alphaForBrightnessMirror:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->constrainedAvailableSpace:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->scrolledToTop:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->scrolledToTop:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationViewHeightRepository;->syntheticScroll:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->syntheticScroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationViewHeightRepository;->isCurrentGestureOverscroll:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->isCurrentGestureOverscroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
