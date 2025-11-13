.class final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    iget-wide v3, v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->recentPowerButtonPressThresholdMs:J

    const-wide/16 v5, -0x1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$lastPowerButtonWakeup$3;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
