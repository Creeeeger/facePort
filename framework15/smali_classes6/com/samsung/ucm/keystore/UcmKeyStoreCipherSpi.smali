.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesGcmNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcIso9797M2;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$PKCS1Padding;
    }
.end annotation


# static fields
.field private static final blacklist AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final blacklist GCM_MODE:Ljava/lang/String; = "GCM"

.field static final blacklist INVALID_PADDING:I = -0x1

.field static final blacklist ISO9797_M2:I = 0x4

.field private static blacklist KEY_EXTRA_AAD:Ljava/lang/String; = null

.field private static blacklist KEY_EXTRA_IV:Ljava/lang/String; = null

.field private static blacklist KEY_EXTRA_TAG_LEN:Ljava/lang/String; = null

.field static final blacklist NO_PADDING:I = 0x1

.field static final blacklist PKCS1_OAEP_PADDING:I = 0x3

.field static final blacklist PKCS1_PADDING:I = 0x2

.field private static final blacklist RSA_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreCipherSpi"


# instance fields
.field private blacklist mAAD:[B

.field private final blacklist mAlgorithm:Ljava/lang/String;

.field blacklist mEncrypting:Z

.field private blacklist mIV:[B

.field private blacklist mIsDoFinalCalled:Z

.field private blacklist mTagLength:I

.field private blacklist mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "extra_iv"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_IV:Ljava/lang/String;

    const-string v0, "extra_aad"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_AAD:Ljava/lang/String;

    const-string v0, "extra_tag_length"

    sput-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;

    invoke-direct {v1, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    goto :goto_0

    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;

    invoke-direct {v1, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist parseDecryptedMessage([B)[B
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private blacklist parseEncryptedMessage([B)[B
    .locals 7

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    new-array v5, v1, [B

    iput-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    iget-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    invoke-static {p1, v4, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    new-array v2, v4, [B

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v6

    goto :goto_0

    :cond_0
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    new-array v2, v3, [B

    :goto_0
    return-object v2
.end method

.method private blacklist parseEncryptionMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    :goto_2
    return-void
.end method

.method private blacklist parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    array-length v1, v0

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Caller-provided IV not permitted"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    instance-of v1, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v1

    iput v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method blacklist doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    return-void
.end method

.method public whitelist test-api engineDoFinal([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    array-length v1, v0

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    return v2

    :cond_0
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api engineDoFinal([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->doFinal()[B

    move-result-object v0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_IV:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_AAD:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v3, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AES"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v6

    :try_start_0
    iget-boolean v7, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v7, v0, v8, v2}, Landroid/sec/enterprise/IEDMProxy;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v7

    move-object v4, v7

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptedMessage([B)[B

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v7, v0, v8, v2}, Landroid/sec/enterprise/IEDMProxy;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v7

    move-object v4, v7

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseDecryptedMessage([B)[B

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    :cond_4
    :goto_0
    nop

    if-eqz v4, :cond_5

    iput-boolean v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    return-object v4

    :cond_5
    new-instance v5, Ljavax/crypto/IllegalBlockSizeException;

    const-string v7, "output is null"

    invoke-direct {v5, v7}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UcmKeyStoreCipherSpi"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljavax/crypto/IllegalBlockSizeException;

    const-string v8, "RemoteException"

    invoke-direct {v7, v8}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    const-string v3, "failed to connect ucm service"

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineGetIV()[B
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIV can be supported after performing doFinal"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    return-object v0
.end method

.method public whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getModulusSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method blacklist engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->init(Ljava/security/Key;)V

    return-void

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetMode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setPadding(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    packed-switch p3, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :pswitch_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    :pswitch_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrappedKeyType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api engineUpdate([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->update([BII)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public whitelist test-api engineUpdateAAD([BII)V
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    return-void
.end method

.method public whitelist test-api engineWrap(Ljava/security/Key;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method blacklist isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
