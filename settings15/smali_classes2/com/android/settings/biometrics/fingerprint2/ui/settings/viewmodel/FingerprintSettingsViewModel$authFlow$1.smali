.class final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel;",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string v0, "canAuthenticate "

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "FingerprintSettingsViewModel"

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel;

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, v2

    move-object v2, v10

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move-object v2, p1

    :cond_5
    :goto_0
    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->nextStep:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;

    if-eqz p1, :cond_c

    const-string p1, "canAuthenticate authing"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_attemptsSoFar:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_6
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iput v9, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->label:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->authenticate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel;

    instance-of v10, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    move-object v11, p1

    check-cast v11, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$1:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iput v7, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->label:I

    invoke-static {v10, v11, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->access$onAuthSuccess(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$1:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->Z$0:Z

    iput v6, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->label:I

    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_9
    instance-of v10, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    if-eqz v10, :cond_5

    move-object v10, p1

    check-cast v10, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    iget v10, v10, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;->error:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    move-object v6, p1

    check-cast v6, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_a
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    invoke-virtual {v0, v7, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;->label:I

    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_3
    return-object v3

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldAuthenticate exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v3
.end method
