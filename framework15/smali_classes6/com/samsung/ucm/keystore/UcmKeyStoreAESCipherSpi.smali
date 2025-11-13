.class public Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.source "UcmKeyStoreAESCipherSpi.java"


# instance fields
.field private blacklist mStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;-><init>(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist doFinalInternal(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string v1, "Invalid input data"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v0
.end method

.method public blacklist getModulusSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;

    return-object v0
.end method

.method public blacklist isModeSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CBC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isPaddingSupported(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "NOPADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "ISO9797_M2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :sswitch_data_0
    .sparse-switch
        -0xe06821d -> :sswitch_1
        0x36127310 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist update([BII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
