.class public Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.source "UcmKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field private blacklist mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 20
    const-string v0, "RSA"

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "certificateBytes"    # [B

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 30
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 32
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 33
    .local v3, "pubKey":Ljava/security/PublicKey;
    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "certAlgorithm":Ljava/lang/String;
    iput-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    .line 36
    const-string v5, "RSA"

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    move-object v5, v3

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "pubKey":Ljava/security/PublicKey;
    .end local v4    # "certAlgorithm":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    .line 55
    .local v0, "objKey":Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 55
    :goto_0
    return v1

    .line 52
    .end local v0    # "objKey":Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
    :cond_2
    :goto_1
    return v1
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
