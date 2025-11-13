.class public final synthetic Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/function/Consumer;

    const/4 p0, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
