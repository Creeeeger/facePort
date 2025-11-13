.class final Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;
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
.field final synthetic $keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field final synthetic $powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;

    iget-object v0, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;->fingerprintUnlockSuccessEvents:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$special$$inlined$map$2;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v1, v1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->$keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1$2;

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v5, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p1, v5}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1$3;

    iget-object v3, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    invoke-direct {v1, v3}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1$3;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;)V

    iput v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
