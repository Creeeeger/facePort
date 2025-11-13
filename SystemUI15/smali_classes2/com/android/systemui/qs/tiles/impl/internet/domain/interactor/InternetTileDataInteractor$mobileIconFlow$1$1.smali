.class final Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;
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

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    check-cast p3, Ljava/lang/CharSequence;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;

    invoke-direct {p0, p4}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/Triple;

    invoke-direct {v1, p1, v0, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
