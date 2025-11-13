.class abstract Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;,
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;,
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private blacklist mIv:[B

.field private blacklist mIvHasBeenUsed:Z

.field private final blacklist mIvRequired:Z

.field private final blacklist mKeymasterBlockMode:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    iput-boolean p3, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    return-void
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_2

    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist test-api engineGetOutputSize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x30

    return v0
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    array-length v0, v0

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to initialize AES AlgorithmParameters with an IV"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain AES AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v1
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "AES"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Null IV in AlgorithmParameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    return-void

    :cond_5
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: AES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Null IV in IvParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only IvParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/security/Key;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v5, -0x6ffffc17

    if-ne v4, v5, :cond_0

    iget-object v1, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v1, :cond_2

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-nez v0, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use despite IV not being used by this transformation"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final blacklist resetAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .locals 0

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method
