.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.super Ljava/lang/Object;
.source "UcmKeyStoreGenericCipher.java"


# instance fields
.field private blacklist mPadding:I

.field private blacklist mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    return-void
.end method

.method private blacklist toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist doFinal()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->doFinalInternal(I)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist doFinalInternal(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method public blacklist getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    return-object v0
.end method

.method public abstract blacklist getModulusSize()I
.end method

.method public blacklist init(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid Key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mUcmKey:Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    return-void
.end method

.method public abstract blacklist initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.end method

.method public abstract blacklist isModeSupported(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isPaddingSupported(Ljava/lang/String;)I
.end method

.method public blacklist setMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->isModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->isPaddingSupported(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->mPadding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist update([BII)V
.end method
