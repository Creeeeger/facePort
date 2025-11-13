.class final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;
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
.field final synthetic $currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/data/model/SelectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/data/repository/UserRepositoryImpl;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/data/model/SelectionStatus;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$send(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/model/SelectionStatus;)V
    .locals 1

    iput-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    new-instance v0, Lcom/android/systemui/user/data/model/SelectedUserModel;

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->tracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lcom/android/systemui/user/data/model/SelectedUserModel;-><init>(Landroid/content/pm/UserInfo;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    const-string p2, "UserRepository"

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;

    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-direct {v1, v3, p1, v4}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;)V

    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v4, v3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->tracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v3, v3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v3

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/user/data/model/SelectionStatus;

    invoke-static {v3, p1, v4, v5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->invokeSuspend$send(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    new-instance v3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$1;

    iget-object v4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;)V

    iput v2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
