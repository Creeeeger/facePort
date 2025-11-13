.class Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferAllOutputUntilDoFinalStreamer"
.end annotation


# instance fields
.field private blacklist mBufferedOutput:Ljava/io/ByteArrayOutputStream;

.field private final blacklist mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mProducedOutputSizeBytes:J


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;)V

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to buffer output"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    return-object v1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .locals 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to buffer output"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1
.end method
