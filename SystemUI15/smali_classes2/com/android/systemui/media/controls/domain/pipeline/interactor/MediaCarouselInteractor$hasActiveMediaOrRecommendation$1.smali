.class final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    check-cast p3, Lcom/android/internal/logging/InstanceId;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;

    invoke-direct {p0, p4}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
