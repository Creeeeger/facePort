.class public final Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;
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

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$mutex$inlined:Lkotlinx/coroutines/sync/Mutex;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$firstIntent$inlined:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$this_run$inlined:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput-object p0, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$0:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$2:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$mutex$inlined:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$3:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->I$0:I

    iput v4, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->label:I

    invoke-interface {v6, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p2

    move-object v8, v6

    move-object v6, p0

    move p0, p1

    move-object p1, v8

    :goto_1
    :try_start_0
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v7, v6, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$firstIntent$inlined:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, v6, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$firstIntent$inlined:Ljava/util/Map;

    invoke-interface {p0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    iget-object p2, v6, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$firstIntent$inlined:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/content/Intent;

    iget-object v6, v6, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2;->$this_run$inlined:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;

    invoke-static {v6, p0, p2, v2}, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;->access$processIntents(Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;ILandroid/content/Intent;Landroid/content/Intent;)Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p0, :cond_6

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$lambda$8$$inlined$mapNotNull$1$2$1;->label:I

    invoke-interface {v4, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
