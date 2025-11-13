.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v4, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v4}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    iget-boolean v9, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->allowReorder:Z

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_3
    instance-of v9, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    if-eqz v9, :cond_5

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    iget-object v7, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v7, v7, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v9, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaControlByInstanceId:Ljava/util/Map;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;

    iget-object v10, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    if-eqz v9, :cond_4

    iget-boolean v13, v10, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    iget-object v12, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v6, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;

    iget-object v7, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    iget-boolean v8, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    iget-object v14, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v15, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    iget-object v9, v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    move-object v11, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;-><init>(Lcom/android/internal/logging/InstanceId;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    goto :goto_2

    :cond_4
    new-instance v15, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;

    iget-boolean v11, v10, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    new-instance v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v9, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->applicationContext:Landroid/content/Context;

    iget-object v10, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->controlInteractorFactory:Lcom/android/systemui/media/controls/domain/pipeline/interactor/factory/MediaControlInteractorFactory;

    invoke-interface {v13, v7}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/factory/MediaControlInteractorFactory;->create(Lcom/android/internal/logging/InstanceId;)Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    move-result-object v20

    iget-object v13, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v14, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v18, v14

    move-object/from16 v19, v10

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V

    new-instance v13, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$1;

    invoke-direct {v13, v8, v6}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;)V

    new-instance v14, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$2;

    invoke-direct {v14, v8, v7}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/internal/logging/InstanceId;)V

    new-instance v10, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$3;

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$3;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;)V

    iget-boolean v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    move-object v9, v15

    move-object/from16 v16, v10

    move-object v10, v7

    move-object v5, v15

    move-object/from16 v15, v16

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;-><init>(Lcom/android/internal/logging/InstanceId;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    iget-object v6, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaControlByInstanceId:Ljava/util/Map;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    :goto_2
    invoke-virtual {v4, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    instance-of v5, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    if-eqz v5, :cond_9

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    iget-object v5, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaRecs:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    iget-object v9, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iget-object v10, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;

    if-eqz v5, :cond_7

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;->recsLoadingModel:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;

    invoke-virtual {v6}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->isRecommendationActive()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v9}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    move v13, v7

    goto :goto_3

    :cond_6
    const/4 v13, 0x1

    :goto_3
    new-instance v6, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    iget-object v7, v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;->onRemoved:Lkotlin/jvm/functions/Function1;

    iget-object v8, v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;->onUpdated:Lkotlin/jvm/functions/Function1;

    iget-object v14, v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;->recsViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iget-object v15, v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;->onAdded:Lkotlin/jvm/functions/Function1;

    move-object v11, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;-><init>(Ljava/lang/String;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_5

    :cond_7
    new-instance v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    iget-object v11, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;->recsLoadingModel:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;

    invoke-virtual {v11}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->isRecommendationActive()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    move/from16 v18, v7

    goto :goto_4

    :cond_8
    const/16 v18, 0x1

    :goto_4
    new-instance v7, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$5;

    invoke-direct {v7, v8}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$5;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;)V

    new-instance v9, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;

    invoke-direct {v9, v8, v6}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;)V

    new-instance v6, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$7;

    invoke-direct {v6, v8}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$7;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;)V

    iget-object v10, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->recommendationsViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    move-object/from16 v16, v5

    move-object/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;-><init>(Ljava/lang/String;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v5, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaRecs:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    move-object v6, v5

    :goto_5
    invoke-virtual {v4, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    iget-boolean v4, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->allowReorder:Z

    if-eqz v4, :cond_c

    iget-object v4, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_b
    iget-object v4, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_c
    iput-boolean v7, v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->allowReorder:Z

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    return-object v3

    :cond_d
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
