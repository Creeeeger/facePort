.class Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;
.super Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
.source "SemEnhancedAttestationPolicyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;->this$0:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    .line 23
    const-string v0, "SemEAPolicyCb"

    const-string v1, "onAttestationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 26
    .local v0, "semResult":Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;->this$0:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    invoke-static {v1}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->-$$Nest$fgetmEACallback(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->onSuccess(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;)V

    .line 27
    .end local v0    # "semResult":Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V

    .line 29
    .local v0, "semError":Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;->this$0:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    invoke-static {v1}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->-$$Nest$fgetmEACallback(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->onFailure(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;)V

    .line 31
    .end local v0    # "semError":Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;
    :goto_0
    return-void
.end method
