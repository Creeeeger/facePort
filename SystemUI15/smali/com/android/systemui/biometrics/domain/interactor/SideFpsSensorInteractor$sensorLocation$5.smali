.class final Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->this$0:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->this$0:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;-><init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$5;->this$0:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor;->logger:Lcom/android/systemui/log/SideFpsLogger;

    iget v0, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->left:I

    iget v1, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->top:I

    iget v2, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->length:I

    iget-boolean p1, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->isSensorVerticalInDefaultOrientation:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/log/SideFpsLogger;->sensorLocationStateChanged(IIIZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
