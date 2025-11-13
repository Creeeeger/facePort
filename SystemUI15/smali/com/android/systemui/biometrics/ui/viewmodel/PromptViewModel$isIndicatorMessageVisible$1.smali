.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;
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

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    check-cast p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;

    invoke-direct {p0, p4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;->helpMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
