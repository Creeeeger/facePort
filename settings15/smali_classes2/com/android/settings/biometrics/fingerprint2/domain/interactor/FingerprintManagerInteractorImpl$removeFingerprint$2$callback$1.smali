.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$removeFingerprint$2$callback$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $it:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/SafeContinuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$removeFingerprint$2$callback$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0

    const-string p2, "fp"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errString"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$removeFingerprint$2$callback$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$removeFingerprint$2$callback$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
