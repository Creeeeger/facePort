.class final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;
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
.field final synthetic $indexCard:I

.field final synthetic $needUpdate:Z

.field label:I

.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ZILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iput-boolean p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$needUpdate:Z

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$indexCard:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$needUpdate:Z

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$indexCard:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->setLoadingData$1(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$needUpdate:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->$indexCard:I

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;-><init>(ILjava/util/ArrayList;III)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ExtensionFunctionsKt;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
