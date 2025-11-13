.class public final Lcom/android/keyguard/SecFaceAuthCallback;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDispatcher:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;-><init>(IILjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;-><init>(IILjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
