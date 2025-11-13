.class final Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;
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

.field final synthetic this$0:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$callback$1;

    invoke-direct {p1, v1}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v5, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object v6, v5, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v7, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$1;

    invoke-direct {v7, v5, p1, v2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$callback$1;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->label:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$2;->INSTANCE:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1$2;

    iput-object v2, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;->label:I

    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
