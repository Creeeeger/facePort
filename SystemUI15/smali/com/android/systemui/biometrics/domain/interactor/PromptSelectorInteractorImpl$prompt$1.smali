.class final Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic L$4:Ljava/lang/Object;

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

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/Integer;

    check-cast p4, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    check-cast p5, Ljava/lang/String;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;

    invoke-direct {p0, p6}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$4:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$4:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    instance-of v3, v2, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    if-eqz v3, :cond_1

    new-instance p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;

    new-instance v3, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    iget-object p1, v2, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;->activeModalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
