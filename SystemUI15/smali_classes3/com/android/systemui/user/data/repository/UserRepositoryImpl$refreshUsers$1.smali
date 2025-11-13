.class final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;
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

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/data/repository/UserRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userInfos:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$1;

    invoke-direct {v5, p1, v3}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$2;

    invoke-direct {v5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$2;-><init>()V

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userInfos:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_4

    iget-object p1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->appContext:Landroid/content/Context;

    const-string v1, "HasSeenMultiUser"

    invoke-static {p1, v1, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "UserRepository"

    const-string/jumbo v1, "refreshUsers: put HasSeenMultiUser as true"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget v1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    const/16 v4, -0x2710

    if-ne v1, v4, :cond_6

    new-instance v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$mainUser$1;

    invoke-direct {v1, p1, v3}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$mainUser$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
