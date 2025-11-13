.class public final synthetic Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    check-cast p1, Ljava/util/function/Consumer;

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
