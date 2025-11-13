.class final Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;
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
.field final synthetic $isXAxis:Z

.field final synthetic $maxBurnInOffsetPixels:I

.field final synthetic $scale:F

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZFLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;",
            "IZF",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    iput p2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$maxBurnInOffsetPixels:I

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$isXAxis:Z

    iput p4, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$scale:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    iget v2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$maxBurnInOffsetPixels:I

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$isXAxis:Z

    iget v4, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$scale:F

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZFLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$maxBurnInOffsetPixels:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$isXAxis:Z

    iget p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$1$1;->$scale:F

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
