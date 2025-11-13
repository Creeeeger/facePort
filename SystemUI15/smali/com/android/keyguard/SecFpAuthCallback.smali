.class public final Lcom/android/keyguard/SecFpAuthCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbackSeq:I

.field public final mDispatcher:Ljava/lang/ref/WeakReference;

.field public final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    iput p1, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/keyguard/SecFpAuthCallback;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecFpAuthCallback;II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/SecFpAuthCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onUdfpsPointerDown(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecFpAuthCallback;II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onUdfpsPointerUp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecFpAuthCallback;II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
