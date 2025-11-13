.class final Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;
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
.field final synthetic $resourceId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->this$0:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iput p2, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->$resourceId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;

    iget-object v0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->this$0:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iget p0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->$resourceId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;-><init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->this$0:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iget-object p1, p1, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->repository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;

    iget p0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;->$resourceId:I

    check-cast p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
