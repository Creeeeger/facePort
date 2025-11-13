.class final Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;
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

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/Integer;

    check-cast p4, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->shouldUseParentProfileForDeviceCredential()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->access$userInfo(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;IZ)Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    invoke-direct {v3, p1, v1, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->shouldUseParentProfileForDeviceCredential()Z

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->access$userInfo(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;IZ)Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v3, p1, v2, v0, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Z)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->shouldUseParentProfileForDeviceCredential()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->access$userInfo(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;IZ)Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    invoke-direct {v3, p1, v1, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
