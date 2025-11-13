.class final Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;
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
.field final synthetic $user:Landroid/os/UserHandle;

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;",
            "Landroid/os/UserHandle;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->$user:Landroid/os/UserHandle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->$user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;-><init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/custom/data/entity/CustomTileDefaults;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->label:I

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
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/tiles/impl/custom/data/entity/CustomTileDefaults;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/tiles/impl/custom/data/entity/CustomTileDefaults;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    iget-object v4, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;->customTileRepository:Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepository;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->$user:Landroid/os/UserHandle;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->label:I

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;->isTileActive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor$launchUpdates$1$2;->label:I

    check-cast v4, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;

    invoke-virtual {v4, v3, v1, p1, p0}, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTileRepositoryImpl;->updateWithDefaults(Landroid/os/UserHandle;Lcom/android/systemui/qs/tiles/impl/custom/data/entity/CustomTileDefaults;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
