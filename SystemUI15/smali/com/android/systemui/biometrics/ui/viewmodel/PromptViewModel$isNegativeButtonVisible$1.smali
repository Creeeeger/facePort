.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

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

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    check-cast p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;

    invoke-direct {p2, p5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->L$0:Ljava/lang/Object;

    iput-object p3, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;->Z$0:Z

    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isNotSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
