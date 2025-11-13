.class final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;",
        "hasScrolledToBottom",
        "",
        "enrollableStatus",
        "Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;"
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-boolean p0, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->Z$0:Z

    iput-object p2, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->Z$0:Z

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    new-instance v0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;-><init>(ZLcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
