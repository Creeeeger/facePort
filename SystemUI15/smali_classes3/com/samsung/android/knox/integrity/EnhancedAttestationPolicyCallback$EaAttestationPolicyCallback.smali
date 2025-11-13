.class Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
.super Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mNonce:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback$Stub;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V

    return-void
.end method


# virtual methods
.method public onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttestationFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAPolicyCb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void
.end method
