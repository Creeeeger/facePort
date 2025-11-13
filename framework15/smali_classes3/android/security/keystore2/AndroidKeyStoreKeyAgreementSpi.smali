.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "AndroidKeyStoreKeyAgreementSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$ECDH;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyAgreementSpi"


# instance fields
.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

.field private final blacklist mKeymintAlgorithm:I

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationHandle:J

.field private blacklist mOtherPartyKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKeymintAlgorithm:I

    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x20000001

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-void

    :cond_1
    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist resetAll()V
    .locals 1

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    return-void
.end method

.method private blacklist resetWhilePreservingInitState()V
    .locals 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V

    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key should be of the same type."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public and Private key parameters should be same."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. doPhase() must only be called exactly once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. lastPhase must be set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only public keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1

    :cond_0
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const-string v1, "engineGenerateSecret"

    invoke-static {v1}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Other party key not provided. Call doPhase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    :cond_1
    throw v1

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore private keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-wide v0
.end method
