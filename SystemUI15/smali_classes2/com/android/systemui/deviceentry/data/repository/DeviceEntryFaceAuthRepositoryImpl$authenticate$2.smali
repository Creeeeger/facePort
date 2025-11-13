.class final Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;
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
.field final synthetic $uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;",
            "Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;

    iget-object v0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;-><init>(Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->authCancellationSignal:Landroid/os/CancellationSignal;

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_isAuthRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object v2, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->uiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getExtraInfo()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    iget-object v0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/FaceAuthenticationLogger;->authenticating(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->this$0:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object v2, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceManager:Landroid/hardware/face/FaceManager;

    if-eqz v2, :cond_0

    iget-object v4, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->authCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;

    iget-object v1, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$authenticate$2;->$uiEvent:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getExtraInfo()I

    move-result v3

    invoke-direct {v0, v1, p0, v3}, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;-><init>(ILcom/android/internal/logging/UiEventLogger$UiEventEnum;I)V

    new-instance p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    iget v1, v0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    invoke-virtual {p0, v1}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    iget v1, v0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->authenticateReason:I

    invoke-virtual {p0, v1}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setAuthenticateReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    iget v0, v0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setWakeReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v5, p1, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthCallback:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$faceAuthCallback$1;

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/face/FaceAuthenticateOptions;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
