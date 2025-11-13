.class final Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;
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
.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    iput p2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    iget p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->$userId:I

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;-><init>(Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    iget v3, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->$userId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$1$4;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
