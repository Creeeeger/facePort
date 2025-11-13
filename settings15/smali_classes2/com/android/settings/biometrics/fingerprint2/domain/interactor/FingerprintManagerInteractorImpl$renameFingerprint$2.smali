.class final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
.field final synthetic $fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

.field final synthetic $newName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$newName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$newName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iget-object v0, p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget v1, v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;->$newName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
