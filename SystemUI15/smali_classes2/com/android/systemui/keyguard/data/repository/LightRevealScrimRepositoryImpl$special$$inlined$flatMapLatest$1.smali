.class public final Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    sget-object v3, Lcom/android/systemui/power/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    invoke-virtual {v1}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAsleep()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastSleepReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-eqz v4, :cond_3

    if-ne v5, v3, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->powerButtonRevealEffect:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    invoke-virtual {v1}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v5, v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->tapRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_1
    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
