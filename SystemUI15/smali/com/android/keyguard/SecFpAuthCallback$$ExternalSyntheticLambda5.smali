.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    check-cast p1, Ljava/util/function/Consumer;

    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
