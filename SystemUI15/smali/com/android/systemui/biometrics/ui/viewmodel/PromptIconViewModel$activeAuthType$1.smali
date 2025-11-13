.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;
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
.field synthetic L$0:Ljava/lang/Object;

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

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->L$0:Ljava/lang/Object;

    iput-boolean p0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;->Z$0:Z

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceAndFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Coex:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceOnly()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Fingerprint:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    goto :goto_2

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Fingerprint:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Face:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
