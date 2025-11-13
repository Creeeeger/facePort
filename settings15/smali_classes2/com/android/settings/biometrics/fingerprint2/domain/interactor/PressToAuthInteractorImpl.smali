.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "backgroundDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final access$getPressToAuth(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-string v2, "sfps_performant_auth_enabled_v2"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {v1, v2, v0, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
