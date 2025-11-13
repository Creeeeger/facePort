.class Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
.super Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub;
.source "EnhancedAttestationPolicyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EaAttestationPolicyCallback"
.end annotation


# instance fields
.field private blacklist mNonce:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttestationFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEMEAPolicyCb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getInstance()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    invoke-static {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->-$$Nest$fgetacb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    return-void
.end method
