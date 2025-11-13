.class final Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;
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
.field final synthetic $error:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->$error:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->$error:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object v4, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->$error:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinderKt;->access$asDefaultHelpMessage(Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result v7

    iput v3, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->label:I

    const/4 v9, 0x0

    const/16 v11, 0x38

    const/4 v8, 0x0

    move-object v10, p0

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showTemporaryError$default(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->label:I

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;->onError()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
