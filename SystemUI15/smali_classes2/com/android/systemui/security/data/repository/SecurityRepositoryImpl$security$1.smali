.class final Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;
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

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;

    iget v1, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    iget-object p1, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/common/coroutine/ChannelExt;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    sget-object v2, Lcom/android/systemui/security/data/model/SecurityModel;->Companion:Lcom/android/systemui/security/data/model/SecurityModel$Companion;

    iget-object v4, p1, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p2, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$updateState$1;->label:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, p1, v0}, Lcom/android/systemui/security/data/model/SecurityModel$Companion;->create(Lcom/android/systemui/statusbar/policy/SecurityController;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    const-string v0, "SecurityRepositoryImpl"

    invoke-static {p1, p0, p2, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;

    iget-object p0, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;-><init>(Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    iget-object v3, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;

    iget-object v4, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    invoke-direct {v1, p1, v4}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;)V

    iget-object v4, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    iput-object p1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->label:I

    invoke-static {p1, v4, p0}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    new-instance p1, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;

    iget-object v4, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    invoke-direct {p1, v4, v1}, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;-><init>(Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1;->label:I

    invoke-static {v3, p1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
