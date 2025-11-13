.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allowReorder:Z

.field public final applicationContext:Landroid/content/Context;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final controlInteractorFactory:Lcom/android/systemui/media/controls/domain/pipeline/interactor/factory/MediaControlInteractorFactory;

.field public final interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mediaControlByInstanceId:Ljava/util/Map;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaItems:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public mediaRecs:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

.field public final modelsPendingRemoval:Ljava/util/Set;

.field public final recommendationsViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

.field public updateHostVisibility:Lkotlin/jvm/functions/Function0;

.field public final visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;Lcom/android/systemui/media/controls/domain/pipeline/interactor/factory/MediaControlInteractorFactory;Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->controlInteractorFactory:Lcom/android/systemui/media/controls/domain/pipeline/interactor/factory/MediaControlInteractorFactory;

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->recommendationsViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iput-object p9, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iput-object p10, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iget-object p2, p6, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$updateHostVisibility$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$updateHostVisibility$1;

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaControlByInstanceId:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    return-void
.end method

.method public static final access$onMediaControlAddedOrUpdated(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel;Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel;->getOnRemoved()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
