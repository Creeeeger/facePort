.class final Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$areNetworksAvailable$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiScanEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiScanEntry;->ssid:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
