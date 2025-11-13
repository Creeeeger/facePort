.class public Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.source "UcmKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field protected blacklist mECParameterSpec:Ljava/security/spec/ECParameterSpec;

.field protected blacklist mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "RSA"

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    const-string v5, "RSA"

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    const-string v5, "EC"

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/security/interfaces/ECKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->equals(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
