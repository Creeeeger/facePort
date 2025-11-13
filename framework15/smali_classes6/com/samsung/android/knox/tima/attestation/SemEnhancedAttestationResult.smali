.class public Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationResult.java"


# instance fields
.field private blacklist result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    return-void
.end method


# virtual methods
.method public whitelist getBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getBlob()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResponseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getServerResponseId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResponseRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getResponseRawData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
