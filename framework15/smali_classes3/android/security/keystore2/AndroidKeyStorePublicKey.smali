.class public abstract Landroid/security/keystore2/AndroidKeyStorePublicKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist mCertificate:[B

.field private final blacklist mCertificateChain:[B

.field private final blacklist mEncoded:[B


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 8

    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v5, p2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    iget-object v4, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    iget-object v4, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method abstract blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method
