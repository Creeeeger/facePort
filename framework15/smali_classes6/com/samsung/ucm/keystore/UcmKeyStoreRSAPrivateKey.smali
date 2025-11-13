.class public Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.source "UcmKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RSA"

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "RSA"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    iget-object v3, v0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
