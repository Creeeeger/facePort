.class public abstract Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicyCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SEMEAPolicyCb"


# instance fields
.field private blacklist acb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetacb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    .line 12
    return-void
.end method


# virtual methods
.method blacklist getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback-IA;)V

    .line 30
    .local v0, "eaAttestationCb":Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
    invoke-static {v0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->-$$Nest$fputmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method abstract blacklist onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
.end method
