.class abstract Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreCipherSpiBase"


# instance fields
.field private blacklist mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mAdditionalAuthenticationDataStreamerClosed:Z

.field private blacklist mCachedException:Ljava/lang/Exception;

.field private blacklist mCipher:Ljavax/crypto/Cipher;

.field private blacklist mEncrypting:Z

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private blacklist mKeymasterPurposeOverride:I

.field private blacklist mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J

.field private blacklist mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    .line 113
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 116
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 117
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 118
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 119
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 120
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 121
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 122
    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 123
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 124
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 125
    return-void
.end method

.method private blacklist abortOperation()V
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 272
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 320
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_7

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 330
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 331
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .local v1, "purpose":I
    goto :goto_0

    .line 333
    .end local v1    # "purpose":I
    :cond_2
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v1, :cond_3

    .line 334
    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 337
    .restart local v1    # "purpose":I
    :goto_0
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :try_start_0
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 341
    invoke-virtual {v4}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 340
    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_1

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;

    move-result-object v4

    .line 347
    .local v4, "e":Ljava/security/GeneralSecurityException;
    if-eqz v4, :cond_6

    .line 348
    instance-of v3, v4, Ljava/security/InvalidKeyException;

    if-nez v3, :cond_5

    .line 350
    instance-of v3, v4, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v3, :cond_4

    .line 351
    move-object v3, v4

    check-cast v3, Ljava/security/InvalidAlgorithmParameterException;

    throw v3

    .line 353
    :cond_4
    new-instance v3, Ljava/security/ProviderException;

    const-string v5, "Unexpected exception type"

    invoke-direct {v3, v5, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 349
    :cond_5
    move-object v3, v4

    check-cast v3, Ljava/security/InvalidKeyException;

    throw v3

    .line 361
    .end local v2    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 364
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v2}, Landroid/security/KeyStoreOperation;->getParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 365
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 366
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 367
    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 368
    iput-boolean v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 369
    return-void

    .line 323
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "purpose":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist flushAAD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v1, :cond_1

    .line 439
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .local v0, "output":[B
    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 444
    nop

    .line 445
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly returned data: "

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

    .line 443
    .end local v0    # "output":[B
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 444
    throw v0

    .line 450
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 258
    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 254
    nop

    .line 262
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 263
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_0

    .line 266
    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 267
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist opmodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "opmode"    # I

    .line 907
    packed-switch p0, :pswitch_data_0

    .line 917
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :pswitch_0
    const-string v0, "UNWRAP_MODE"

    return-object v0

    .line 913
    :pswitch_1
    const-string v0, "WRAP_MODE"

    return-object v0

    .line 911
    :pswitch_2
    const-string v0, "DECRYPT_MODE"

    return-object v0

    .line 909
    :pswitch_3
    const-string v0, "ENCRYPT_MODE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method protected blacklist createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .locals 1
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .locals 3
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 380
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-object v0
.end method

.method protected final whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 655
    :cond_0
    if-eqz p1, :cond_5

    .line 658
    if-eqz p2, :cond_4

    .line 662
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 664
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 665
    nop

    .line 667
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 666
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 668
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 670
    .end local v1    # "outputArray":[B
    :cond_1
    new-array v1, v0, [B

    .line 671
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 672
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v3

    move-object v1, v3

    .line 675
    .local v1, "outputArray":[B
    :goto_0
    if-eqz v1, :cond_2

    array-length v2, v1

    .line 676
    .local v2, "outputSize":I
    :cond_2
    if-lez v2, :cond_3

    .line 677
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 679
    .local v3, "outputBufferAvailable":I
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    goto :goto_1

    .line 680
    :catch_0
    move-exception v4

    .line 681
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 686
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_3
    :goto_1
    return v2

    .line 659
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineDoFinal([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    return v0

    .line 635
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0

    .line 636
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 637
    return v1

    .line 639
    :cond_1
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 640
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_2

    .line 644
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    array-length v1, v0

    return v1

    .line 641
    :cond_2
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final whitelist test-api engineDoFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_1

    .line 588
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 589
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 591
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 595
    :cond_1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 601
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    nop

    .line 608
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 609
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 621
    .local v0, "output":[B
    nop

    .line 623
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 624
    return-object v0

    .line 612
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 619
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 617
    :sswitch_0
    new-instance v1, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v1}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/AEADBadTagException;

    throw v1

    .line 615
    :sswitch_1
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-direct {v1}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;

    throw v1

    .line 602
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 603
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 596
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 597
    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_1
        -0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method protected final whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 851
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 195
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 199
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 206
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    const/4 v0, 0x0

    .line 208
    .local v0, "success":Z
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 209
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 210
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    const/4 v0, 0x1

    .line 213
    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 217
    :cond_2
    return-void

    .line 213
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 214
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 216
    :cond_3
    throw v1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 133
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_5

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 137
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "transform":Ljava/lang/String;
    const-string v1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SHA1"

    const-string v3, "MGF1"

    if-eqz v1, :cond_1

    .line 140
    :try_start_1
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-224"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 143
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 144
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_0

    :cond_1
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-256"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 148
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 150
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_0

    :cond_2
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-384"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 154
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 156
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_0

    :cond_3
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-512"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 160
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 161
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_0
    return-void

    .line 165
    .end local v0    # "transform":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_5
    const/4 v0, 0x0

    .line 174
    .local v0, "success":Z
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 175
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    nop

    .line 181
    const/4 v0, 0x1

    .line 183
    if-nez v0, :cond_6

    .line 184
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 187
    :cond_6
    return-void

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_4
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catchall_0
    move-exception v1

    if-nez v0, :cond_7

    .line 184
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 186
    :cond_7
    throw v1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 225
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 229
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    const/4 v0, 0x0

    .line 238
    .local v0, "success":Z
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 239
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 240
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 v0, 0x1

    .line 243
    if-nez v0, :cond_2

    .line 244
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 247
    :cond_2
    return-void

    .line 243
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 244
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 246
    :cond_3
    throw v1
.end method

.method protected final whitelist test-api engineSetMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_3

    .line 785
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    if-eqz p1, :cond_1

    .line 796
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 799
    .local v0, "encoded":[B
    nop

    .line 801
    packed-switch p3, :pswitch_data_0

    .line 830
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wrappedKeyType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :pswitch_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 809
    :pswitch_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 811
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    :try_start_1
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 812
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 820
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :pswitch_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 822
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    :try_start_2
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 823
    :catch_1
    move-exception v2

    .line 824
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 797
    .end local v0    # "encoded":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 798
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Failed to unwrap key"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 791
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wrappedKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 478
    :cond_0
    if-eqz p1, :cond_5

    .line 481
    if-eqz p2, :cond_4

    .line 485
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 487
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 488
    nop

    .line 490
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 489
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 491
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 493
    .end local v1    # "outputArray":[B
    :cond_1
    new-array v1, v0, [B

    .line 494
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 495
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v3

    move-object v1, v3

    .line 498
    .local v1, "outputArray":[B
    :goto_0
    if-eqz v1, :cond_2

    array-length v2, v1

    .line 499
    .local v2, "outputSize":I
    :cond_2
    if-lez v2, :cond_3

    .line 500
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 502
    .local v3, "outputBufferAvailable":I
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_1

    .line 503
    :catch_0
    move-exception v4

    .line 504
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 509
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_3
    :goto_1
    return v2

    .line 482
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdate([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v0

    return v0

    .line 458
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v0

    .line 459
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 460
    return v1

    .line 462
    :cond_1
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 463
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_2

    .line 467
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    array-length v1, v0

    return v1

    .line 464
    :cond_2
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final whitelist test-api engineUpdate([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 400
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 405
    return-object v1

    .line 408
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    nop

    .line 414
    if-nez p3, :cond_2

    .line 415
    return-object v1

    .line 420
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 421
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    .local v0, "output":[B
    nop

    .line 427
    array-length v2, v0

    if-nez v2, :cond_3

    .line 428
    return-object v1

    .line 431
    :cond_3
    return-object v0

    .line 422
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 424
    return-object v1

    .line 409
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 411
    return-object v1
.end method

.method protected final whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 555
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    .line 557
    return-void

    .line 560
    :cond_0
    if-eqz p1, :cond_3

    .line 563
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    return-void

    .line 570
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 572
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 573
    .local v1, "inputOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 574
    .local v2, "inputLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 576
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 577
    .restart local v0    # "input":[B
    const/4 v1, 0x0

    .line 578
    .restart local v1    # "inputOffset":I
    array-length v2, v0

    .line 579
    .restart local v2    # "inputLen":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 581
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    .line 582
    return-void

    .line 561
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdateAAD([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 514
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 516
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 520
    return-void

    .line 524
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    nop

    .line 530
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_5

    .line 535
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_4

    .line 541
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    .local v0, "output":[B
    nop

    .line 547
    if-eqz v0, :cond_3

    array-length v1, v0

    if-gtz v1, :cond_2

    goto :goto_0

    .line 548
    :cond_2
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly produced output: "

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

    .line 551
    :cond_3
    :goto_0
    return-void

    .line 542
    .end local v0    # "output":[B
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 544
    return-void

    .line 536
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This cipher does not support AAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 527
    return-void
.end method

.method protected final whitelist test-api engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_b

    .line 700
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 705
    if-eqz p1, :cond_9

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "encoded":[B
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    const-string v2, "Failed to wrap key because it does not export its key material"

    if-eqz v1, :cond_2

    .line 710
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RAW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 713
    :cond_1
    if-nez v0, :cond_6

    .line 715
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 716
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    move-object v3, p1

    check-cast v3, Ljavax/crypto/SecretKey;

    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 717
    invoke-virtual {v1, v3, v4}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 719
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 724
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 726
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_4

    .line 727
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PKCS8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 730
    :cond_3
    if-nez v0, :cond_6

    .line 732
    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 733
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 734
    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 735
    .local v3, "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 740
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    goto :goto_0

    .line 736
    :catch_1
    move-exception v1

    .line 737
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 742
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_4
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_8

    .line 743
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X.509"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 744
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 746
    :cond_5
    if-nez v0, :cond_6

    .line 748
    :try_start_2
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 749
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 750
    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 751
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v4

    .line 756
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    goto :goto_0

    .line 752
    :catch_2
    move-exception v1

    .line 753
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 762
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 768
    const/4 v1, 0x0

    :try_start_3
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 769
    :catch_3
    move-exception v1

    .line 770
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/crypto/IllegalBlockSizeException;

    throw v2

    .line 763
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :cond_7
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 759
    :cond_8
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    .end local v0    # "encoded":[B
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 858
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 861
    throw v0
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForFinish()I
.end method

.method protected final blacklist getConsumedInputSizeBytes()J
    .locals 2

    .line 893
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 896
    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist getKeySecurityLevel()I
    .locals 3

    .line 924
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 925
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    const-class v2, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/KeyInfo;

    .line 926
    .local v1, "keyInfo":Landroid/security/keystore/KeyInfo;
    invoke-virtual {v1}, Landroid/security/keystore/KeyInfo;->getSecurityLevel()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 927
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "keyInfo":Landroid/security/keystore/KeyInfo;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x2

    return v0
.end method

.method protected final blacklist getKeymasterPurposeOverride()I
    .locals 1

    .line 881
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final blacklist getOperationHandle()J
    .locals 2

    .line 866
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected final blacklist getProducedOutputSizeBytes()J
    .locals 2

    .line 900
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    .line 903
    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 901
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist getTransform()Ljava/lang/String;
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final blacklist isEncrypting()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
.end method

.method protected blacklist resetAll()V
    .locals 4

    .line 283
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 285
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 287
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 288
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 289
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 290
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 291
    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 292
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 293
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 294
    return-void
.end method

.method protected blacklist resetWhilePreservingInitState()V
    .locals 2

    .line 306
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 309
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 311
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 312
    return-void
.end method

.method protected final blacklist setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .locals 0
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 870
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 871
    return-void
.end method

.method protected final blacklist setKeymasterPurposeOverride(I)V
    .locals 0
    .param p1, "keymasterPurpose"    # I

    .line 877
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 878
    return-void
.end method
