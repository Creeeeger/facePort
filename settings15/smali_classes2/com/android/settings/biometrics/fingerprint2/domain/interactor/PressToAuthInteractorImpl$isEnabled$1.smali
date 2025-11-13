.class final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
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

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    invoke-direct {v1, p1, v3}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;)V

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    iget-object v3, v3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sfps_performant_auth_enabled_v2"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    iget-object v5, v5, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    invoke-static {v3}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->access$getPressToAuth(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$1;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;)V

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
