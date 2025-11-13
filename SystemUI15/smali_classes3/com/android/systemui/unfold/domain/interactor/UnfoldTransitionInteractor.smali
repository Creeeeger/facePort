.class public final Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

.field public final repository:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;

.field public final unfoldProgress:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->repository:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;

    iput-object p2, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    check-cast p1, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;->getTransitionStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldProgress$2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldProgress$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->unfoldProgress:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final unfoldTranslationX(Z)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    const v1, 0x7f070bb9

    invoke-virtual {v0, v1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$$inlined$map$1;

    iget-object v0, v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->layoutDirection:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v2, v0}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$unfoldTranslationX$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->unfoldProgress:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0, v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    return-object p0
.end method
