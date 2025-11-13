.class final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;
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
.field private synthetic L$0:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iget-object v3, v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$activeMediaChanges$1;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$activeMediaChanges$1;-><init>(Landroid/media/session/MediaSessionManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {v3, v4, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlinx/coroutines/CoroutineScope;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;->label:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
