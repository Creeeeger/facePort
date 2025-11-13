.class public final Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $firstIntent$inlined:Ljava/util/Map;

.field public final synthetic $mutex$inlined:Lkotlinx/coroutines/sync/Mutex;

.field public final synthetic $this_run$inlined:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/sync/Mutex;Ljava/util/Map;Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$mutex$inlined:Lkotlinx/coroutines/sync/Mutex;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$firstIntent$inlined:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$this_run$inlined:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$mutex$inlined:Lkotlinx/coroutines/sync/Mutex;

    iput-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$firstIntent$inlined:Ljava/util/Map;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$this_run$inlined:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;

    if-eqz v6, :cond_6

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget-object v7, v7, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2;->$firstIntent$inlined:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-static {v7, v6, v4}, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;->access$processSingleIntent(Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;ILandroid/content/Intent;)Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;-><init>(Ljava/lang/Iterable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$map$1$2$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_6
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
