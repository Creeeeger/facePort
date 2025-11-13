.class final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;
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

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v1, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;->label:I

    invoke-virtual {v1, v3, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p0, v1

    :goto_0
    :try_start_0
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->callbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;

    invoke-interface {v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;->isEvictable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;->onUserStateChanged()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_2
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
