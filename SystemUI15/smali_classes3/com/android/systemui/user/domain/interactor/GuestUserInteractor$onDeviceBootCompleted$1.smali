.class final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;
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
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    sget v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isDeviceAllowedToAddGuest()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iput v4, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->label:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->label:I

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;

    invoke-direct {v3, v1, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;)V

    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    sget v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isDeviceAllowedToAddGuest()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;->label:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
