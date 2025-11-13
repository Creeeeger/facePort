.class final Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;
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
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/CommunalSceneStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/CommunalSceneStartable;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->this$0:Lcom/android/systemui/communal/CommunalSceneStartable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->this$0:Lcom/android/systemui/communal/CommunalSceneStartable;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->Z$0:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->Z$0:Z

    iget-object v0, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->this$0:Lcom/android/systemui/communal/CommunalSceneStartable;

    iget-object v1, v0, Lcom/android/systemui/communal/CommunalSceneStartable;->timeoutJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v2, v0, Lcom/android/systemui/communal/CommunalSceneStartable;->timeoutJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalSceneStartable$start$4$2;->this$0:Lcom/android/systemui/communal/CommunalSceneStartable;

    iget-object p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->timeoutJob:Lkotlinx/coroutines/Job;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/systemui/communal/CommunalSceneStartable$startHubTimeout$1;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$startHubTimeout$1;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v2, v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->timeoutJob:Lkotlinx/coroutines/Job;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
