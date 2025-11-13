.class abstract Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSignatureSpiBase"


# instance fields
.field private blacklist mCachedException:Ljava/lang/Exception;

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private blacklist mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J

.field private blacklist mSignature:Ljava/security/Signature;

.field private blacklist mSigning:Z


# direct methods
.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    return-void
.end method

.method private blacklist abortOperation()V
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v3

    throw v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .locals 2

    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreKey;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported private key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unsupported key: null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_3
    throw v1
.end method

.method protected final whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :try_start_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineSign([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final whitelist test-api engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    return-void
.end method

.method protected final whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iput-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    :goto_1
    return-void
.end method

.method protected final whitelist test-api engineUpdate([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_3

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-nez p3, :cond_1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    array-length v1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update operation unexpectedly produced output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final whitelist test-api engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineVerify([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForSign()I
.end method

.method protected abstract blacklist getAlgorithm()Ljava/lang/String;
.end method

.method public final blacklist getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected blacklist initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    return-void
.end method

.method protected final blacklist isSigning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method protected blacklist resetAll()V
    .locals 2

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected blacklist resetWhilePreservingInitState()V
    .locals 2

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method
