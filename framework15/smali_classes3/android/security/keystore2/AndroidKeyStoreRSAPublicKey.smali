.class public Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final blacklist mModulus:Ljava/math/BigInteger;

.field private final blacklist mPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 7

    invoke-interface {p4}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v0, "X.509"

    invoke-interface {p4}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLandroid/security/KeyStoreSecurityLevel;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const-string v4, "RSA"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 8

    new-instance v7, Landroid/security/keystore2/AndroidKeyStoreRSAPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v5

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreRSAPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Landroid/security/KeyStoreSecurityLevel;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
