.class final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000c\u0008\u0001\u0010\u0004*\u0006\u0012\u0002\u0008\u00030\u0005*\u00020\u0006H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;",
        "S",
        "Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $recommendType:I

.field label:I

.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->$recommendType:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->$recommendType:I

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->$recommendType:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x5

    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->$recommendType:I

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_6

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->$recommendType:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->getTopInstalledAppSize()V

    goto :goto_2

    :cond_5
    if-ne v3, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->getCloudStatus()V

    :cond_6
    :goto_2
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, p1, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ZILkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
