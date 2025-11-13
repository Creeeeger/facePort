.class final Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;
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
.field final synthetic $enabled:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->$enabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->$enabled:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1$1;

    iget-boolean v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->$enabled:Z

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;->label:I

    invoke-static {p1, v1, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
