.class public Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreXDHPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPublicKey;


# static fields
.field private static final blacklist X25519_KEY_SIZE_BYTES:I = 0x20

.field private static final blacklist X509_PREAMBLE:[B

.field private static final blacklist X509_PREAMBLE_WITH_NULL:[B


# instance fields
.field private final blacklist mEncodedKey:[B

.field private final blacklist mPreambleLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x2ct
        0x30t
        0x7t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x5t
        0x0t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    if-eqz v0, :cond_1

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result v0

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-static {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size is not correct size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty encoded key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist matchesPreamble([B[B)I
    .locals 9

    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v5, p0

    const/4 v7, 0x0

    array-length v8, p0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Ljava/util/Arrays;->compare([BII[BII)I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    array-length v0, p0

    return v0
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "XDH"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "x.509"

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 8

    new-instance v7, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    const-string v5, "XDH"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v7
.end method

.method public whitelist test-api getU()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
