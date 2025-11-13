.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;->emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    const-string p1, "MediaSessionViewModel"

    const-string p2, "emit() - media session changed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iget-object v0, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_sessionControllersFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    iget-object v3, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$1;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v5, v4, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$2;

    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$3;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v5, v2, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->context:Landroid/content/Context;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v6, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$$inlined$sortedBy$1;-><init>()V

    new-instance v7, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {v7, v6, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$6;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$6;

    new-instance v6, Lkotlin/sequences/DistinctSequence;

    invoke-direct {v6, v7, v2}, Lkotlin/sequences/DistinctSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;-><init>(Ljava/util/List;Landroid/content/Context;)V

    new-instance v3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v3, v6, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update$1()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iget-object v6, v4, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    move-object v5, v3

    :cond_4
    check-cast v5, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    if-eqz v5, :cond_5

    const-string v2, "MusicShare is currently playing"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->setPackageName(Ljava/lang/String;)V

    :cond_5
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_mediaInfo:Landroidx/lifecycle/MediatorLiveData;

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v5, v3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v4, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v4, v5}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v4, :cond_6

    iget-object v5, v4, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_6
    invoke-virtual {v3}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->close()V

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v3, p2, v5, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;)V

    invoke-virtual {v4, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-boolean v2, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->isGrayscaleThumbnail:Z

    iput-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isGrayscaleThumbnail:Z

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    iget-object p1, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_sessionControllersFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method
