.class public final Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _verificationError:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;

.field public final prompt:Lkotlinx/coroutines/flow/Flow;

.field public final showTitleOnly:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$special$$inlined$map$1;

.field public final verificationError:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/biometrics/data/repository/PromptRepository;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;

    check-cast p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$special$$inlined$map$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->showTitleOnly:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$special$$inlined$map$1;

    iget-object p1, p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, v0, p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->prompt:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->_verificationError:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->verificationError:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$userInfo(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;IZ)Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;

    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    iget p0, p2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    :goto_0
    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;-><init>(III)V

    return-object v0
.end method

.method public static final access$verifyCredential(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;

    iget v1, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;

    check-cast p3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p3, p2, v4}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$finalStatus$1;

    invoke-direct {p2, p0, v4}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$finalStatus$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$verifyCredential$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->lastOrNull(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;

    if-nez p3, :cond_5

    new-instance p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    goto :goto_3

    :cond_5
    move-object v1, p3

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    return-object v1
.end method

.method public static checkCredential$default(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Ljava/lang/CharSequence;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$checkCredential$2;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$checkCredential$2;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Ljava/lang/CharSequence;Ljava/util/List;Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, p2, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
