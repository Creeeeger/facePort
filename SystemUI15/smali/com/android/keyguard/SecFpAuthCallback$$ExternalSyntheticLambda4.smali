.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iput-object p2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iget-object p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    check-cast p1, Ljava/util/function/Consumer;

    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, p0}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
