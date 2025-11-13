.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;

    iget v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Lkotlin/Triple;

    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const/4 p2, 0x0

    iget-object v7, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    if-nez v4, :cond_3

    iget-object v4, v7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    iget-wide v4, v7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->recentPowerButtonPressThresholdMs:J

    cmp-long v4, v8, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    move p2, v3

    :cond_5
    if-nez p2, :cond_6

    iget-object v2, v7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;->logger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const-string v5, "BiometricUnlockLogger"

    const/4 v6, 0x0

    iget-object v2, v2, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v7, "Skip success haptic. Recent power button press or button is down."

    invoke-virtual {v2, v5, v4, v7, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    if-eqz p2, :cond_7

    iput v3, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor$special$$inlined$filter$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
