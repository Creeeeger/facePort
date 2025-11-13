.class final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;
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
.field final synthetic $credential:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic $request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;",
            "Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v1, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget-wide v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    iget-wide v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-wide v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    iget-wide v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iget-object v6, v6, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iget v12, v6, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    iget-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v6, v6, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v13, 0x1

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v12}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v7, v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iget-object v5, v5, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    iget-wide v10, v5, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;->gatekeeperChallenge:J

    move-wide v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v6, v6, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    new-instance v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;

    if-eqz v5, :cond_0

    invoke-direct {v3, v5}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;-><init>([B)V

    iput v13, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_20

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v7, v7, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v6

    invoke-virtual {v7, v12, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v8, v8, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    new-instance v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;

    iget-object v11, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v11, v11, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    const/16 v12, 0x3e8

    int-to-long v12, v12

    div-long v12, v6, v12

    new-instance v14, Ljava/lang/Long;

    invoke-direct {v14, v12, v13}, Ljava/lang/Long;-><init>(J)V

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x7f13022f

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    iput-wide v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    iput v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-interface {v2, v10, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_2

    return-object v1

    :cond_2
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    iput-wide v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    iput v4, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    sub-long/2addr v6, v8

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_20

    return-object v1

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v6, v6, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v6

    add-int/2addr v6, v13

    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v7, v7, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v7

    if-lez v7, :cond_1f

    if-gtz v6, :cond_6

    goto/16 :goto_c

    :cond_6
    sub-int v8, v7, v6

    if-gez v8, :cond_7

    const/4 v8, 0x0

    :cond_7
    new-instance v9, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    iget-object v10, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v10, v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v11, v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f13022e

    invoke-virtual {v10, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    iget-object v10, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v11, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v13, :cond_1c

    iget-object v8, v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    iget-object v15, v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v10, v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    iget-object v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iget v3, v3, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    invoke-virtual {v15, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/systemui/biometrics/domain/interactor/UserType;->MANAGED_PROFILE:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/android/systemui/biometrics/domain/interactor/UserType;->SECONDARY:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v3, Lcom/android/systemui/biometrics/domain/interactor/UserType;->PRIMARY:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    :goto_4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_18

    sget-object v10, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v10, v3

    if-eq v3, v13, :cond_14

    if-eq v3, v5, :cond_f

    if-ne v3, v4, :cond_e

    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    if-eqz v3, :cond_b

    const v3, 0x7f13023e

    goto :goto_5

    :cond_b
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    if-eqz v3, :cond_c

    const v3, 0x7f13023b

    goto :goto_5

    :cond_c
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    if-eqz v3, :cond_d

    const v3, 0x7f130238

    :goto_5
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_f
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    if-eqz v3, :cond_10

    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PIN_LAST_ATTEMPT"

    goto :goto_6

    :cond_10
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    if-eqz v3, :cond_11

    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PATTERN_LAST_ATTEMPT"

    goto :goto_6

    :cond_11
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    if-eqz v3, :cond_13

    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PASSWORD_LAST_ATTEMPT"

    :goto_6
    new-instance v4, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getLastAttemptBeforeWipeProfileMessage$getFallbackString$1;

    invoke-direct {v4, v11, v8}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getLastAttemptBeforeWipeProfileMessage$getFallbackString$1;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    if-eqz v5, :cond_12

    new-instance v8, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$sam$java_util_function_Supplier$0;

    invoke-direct {v8, v4}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$sam$java_util_function_Supplier$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v3, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_1d

    invoke-virtual {v4}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getLastAttemptBeforeWipeProfileMessage$getFallbackString$1;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_b

    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_14
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    if-eqz v3, :cond_15

    const v3, 0x7f13023c

    goto :goto_8

    :cond_15
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    if-eqz v3, :cond_16

    const v3, 0x7f130239

    goto :goto_8

    :cond_16
    instance-of v3, v11, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    if-eqz v3, :cond_17

    const v3, 0x7f130236

    :goto_8
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_18
    if-gtz v10, :cond_1b

    sget-object v4, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    if-ne v4, v5, :cond_19

    const-string v4, "SystemUi.BIOMETRIC_DIALOG_WORK_LOCK_FAILED_ATTEMPTS"

    goto :goto_9

    :cond_19
    const-string v4, "UNDEFINED"

    :goto_9
    new-instance v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;

    invoke-direct {v5, v3, v8}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/UserType;Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    new-instance v8, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$sam$java_util_function_Supplier$0;

    invoke-direct {v8, v5}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$sam$java_util_function_Supplier$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_1d

    invoke-virtual {v5}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_b

    :cond_1b
    const-string v3, ""

    goto :goto_b

    :cond_1c
    const/4 v3, 0x0

    :cond_1d
    :goto_b
    invoke-direct {v9, v6, v7, v3}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iput v12, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    const/4 v3, 0x6

    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-interface {v2, v9, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1e

    return-object v1

    :cond_1e
    move v1, v12

    goto :goto_d

    :cond_1f
    :goto_c
    new-instance v9, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v12, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    const/4 v3, 0x5

    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    invoke-interface {v2, v9, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1e

    return-object v1

    :goto_d
    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    :cond_20
    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
