.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$PKCS1Padding;
    }
.end annotation


# static fields
.field private static final blacklist RSA_NO_PADDING:I = 0x3

.field private static final blacklist RSA_PKCS1_OAEP_PADDING:I = 0x4

.field private static final blacklist RSA_PKCS1_PADDING:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreCipherSpi"


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private blacklist mBuffer:[B

.field private blacklist mBufferOffset:I

.field blacklist mEncrypting:Z

.field private blacklist mIsInputTooLarge:Z

.field blacklist mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

.field private blacklist mModulusSizeBytes:I

.field blacklist mPadding:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "padding"    # I
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mPadding:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mModulusSizeBytes:I

    .line 62
    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mPadding:I

    .line 63
    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 65
    return-void
.end method


# virtual methods
.method blacklist doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public whitelist test-api engineDoFinal([BII[BI)I
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

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    .line 281
    .local v0, "b":[B
    array-length v1, v0

    add-int/2addr v1, p5

    .line 282
    .local v1, "lastOffset":I
    array-length v2, p4

    if-gt v1, v2, :cond_0

    .line 287
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v2, v0

    return v2

    .line 283
    :cond_0
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "output buffer is too small "

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
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsInputTooLarge:Z

    if-nez v0, :cond_6

    .line 240
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 241
    iget v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mPadding:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 242
    array-length v2, v1

    new-array v2, v2, [B

    .line 243
    .local v2, "tmpBuf":[B
    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 245
    .end local v2    # "tmpBuf":[B
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .restart local v2    # "tmpBuf":[B
    goto :goto_0

    .line 248
    .end local v2    # "tmpBuf":[B
    :cond_2
    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBuffer:[B

    .line 251
    .restart local v2    # "tmpBuf":[B
    :goto_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 252
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_5

    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, "output":[B
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v4, :cond_3

    .line 259
    iget-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    invoke-virtual {v4}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v4, v2, v5}, Landroid/sec/enterprise/IEDMProxy;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    .line 261
    :cond_3
    iget-object v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    invoke-virtual {v4}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v4, v2, v5}, Landroid/sec/enterprise/IEDMProxy;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 266
    :goto_1
    nop

    .line 267
    if-eqz v1, :cond_4

    .line 271
    iput v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    .line 272
    return-object v1

    .line 268
    :cond_4
    new-instance v3, Ljavax/crypto/IllegalBlockSizeException;

    const-string/jumbo v4, "output is null"

    invoke-direct {v3, v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UcmKeyStoreCipherSpi"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v4, Ljavax/crypto/IllegalBlockSizeException;

    const-string v5, "RemoteException"

    invoke-direct {v4, v5}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 253
    .end local v1    # "output":[B
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_5
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    const-string v3, "failed to connect ucm service"

    invoke-direct {v1, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v2    # "tmpBuf":[B
    :cond_6
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input must be under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetBlockSize()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineGetIV()[B
    .locals 1

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 100
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method public whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
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

    .line 193
    if-nez p3, :cond_4

    .line 198
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 203
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

    .line 201
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2

    .line 199
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 205
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 206
    return-void

    .line 194
    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
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
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
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

    .end local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v0

    .line 161
    .restart local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2

    .line 159
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 165
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
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

    .line 174
    if-nez p3, :cond_4

    .line 179
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 184
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

    .line 182
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2

    .line 180
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 186
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 187
    return-void

    .line 175
    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
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

.method blacklist engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 130
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

    .line 128
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    goto :goto_2

    .line 126
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    .line 133
    :goto_2
    instance-of v0, p2, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-nez v0, :cond_5

    .line 134
    if-nez p2, :cond_4

    .line 135
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "RSA private or public key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private or public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_5
    move-object v0, p2

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    .line 140
    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 141
    .local v0, "modulus":Ljava/math/BigInteger;
    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mModulusSizeBytes:I

    .line 145
    :cond_6
    iget v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mModulusSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBuffer:[B

    .line 146
    iput v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    .line 147
    iput-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsInputTooLarge:Z

    .line 148
    return-void
.end method

.method public whitelist test-api engineSetMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 69
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "modeUpper":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 79
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mPadding:I

    .line 82
    return-void

    .line 84
    :cond_0
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mPadding:I

    .line 86
    return-void

    .line 89
    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "padding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 4
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    .line 310
    .local v0, "encoded":[B
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 311
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 312
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    .line 314
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrappedKeyType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .end local p3    # "wrappedKeyType":I
    throw v1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "encoded":[B
    .restart local p0    # "this":Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .restart local p3    # "wrappedKeyType":I
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 318
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 316
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 317
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api engineUpdate([BII[BI)I
    .locals 1
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

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineUpdate([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 210
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBuffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsInputTooLarge:Z

    .line 214
    :cond_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mBufferOffset:I

    .line 217
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public whitelist test-api engineWrap(Ljava/security/Key;)[B
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 295
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 296
    .local v0, "encoded":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 297
    .end local v0    # "encoded":[B
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 299
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 300
    throw v1
.end method

.method blacklist isInitialized()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
