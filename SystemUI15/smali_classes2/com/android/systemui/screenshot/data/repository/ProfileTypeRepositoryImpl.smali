.class public final Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;


# instance fields
.field public final background:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cache:Ljava/util/Map;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->userManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->background:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->cache:Ljava/util/Map;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    return-void
.end method


# virtual methods
.method public final getProfileType(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;

    iget v1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;-><init>(Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$0:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->I$0:I

    iput v4, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->label:I

    invoke-virtual {p2, v5, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->cache:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/data/model/ProfileType;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->background:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v4, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;

    invoke-direct {v4, p0, p1, v5}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;-><init>(Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, v0

    move-object v0, p0

    move p0, p1

    move-object p1, p2

    move-object p2, v6

    :goto_2
    :try_start_2
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/screenshot/data/model/ProfileType;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->cache:Ljava/util/Map;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/screenshot/data/model/ProfileType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p2, p1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p2

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    :goto_4
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
