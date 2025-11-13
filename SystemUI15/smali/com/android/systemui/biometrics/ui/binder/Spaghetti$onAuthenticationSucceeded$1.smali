.class final Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;
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
.field final synthetic $modality:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;


# direct methods
.method public constructor <init>(ILcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->$modality:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->$modality:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;-><init>(ILcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->$modality:I

    invoke-static {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalityKt;->asBiometricModality(I)Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    move-result-object v4

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/biometrics/shared/model/BiometricModality;->Face:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    const/4 v3, 0x0

    if-eq v4, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f130242

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasSfps()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f130245

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    if-eqz v3, :cond_5

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v7, p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    goto :goto_1

    :goto_2
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;->label:I

    const-wide/16 v5, 0x1f4

    move-object v3, v1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showAuthenticated(Lcom/android/systemui/biometrics/shared/model/BiometricModality;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
