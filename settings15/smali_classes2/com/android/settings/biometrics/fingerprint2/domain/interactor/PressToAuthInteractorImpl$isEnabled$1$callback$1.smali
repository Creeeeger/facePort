.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const-string p1, "PressToAuthInteractor"

    const-string v0, "SFPS_PERFORMANT_AUTH_ENABLED#onchange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl$isEnabled$1$callback$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;->access$getPressToAuth(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/PressToAuthInteractorImpl;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
