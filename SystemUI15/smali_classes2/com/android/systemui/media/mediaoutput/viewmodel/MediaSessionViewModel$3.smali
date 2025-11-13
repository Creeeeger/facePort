.class final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;

    iget-object v4, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v4, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;

    invoke-direct {v4, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->label:I

    invoke-static {v4, p0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->isGrayscaleThumbnail:Z

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {p1, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
