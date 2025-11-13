.class final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iput v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->label:I

    sget v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iput-boolean v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserResetting:Z

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_3

    const-string p1, "GuestUserInteractor"

    const-string v0, "Could not create new guest while exiting existing guest"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->refreshIfNotPaused()V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
