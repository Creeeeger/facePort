.class final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;
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

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;

    iget v1, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    iget-object p1, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->L$0:Ljava/lang/Object;

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

    iput-object p2, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$updateState$1;->label:I

    sget v2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isUserSwitcherEnabled$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isUserSwitcherEnabled$2;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    const-string v0, "UserSwitcherRepositoryImpl"

    invoke-static {p1, p0, p2, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->label:I

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
    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;

    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iget-object v7, v1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v8, v1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->bgHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v9, v1, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;

    iget-object v6, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    iget-object v4, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->label:I

    invoke-static {p1, v4, p0}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    new-instance p1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$1;

    invoke-direct {p1, v1}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$1;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;->label:I

    invoke-static {v3, p1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
