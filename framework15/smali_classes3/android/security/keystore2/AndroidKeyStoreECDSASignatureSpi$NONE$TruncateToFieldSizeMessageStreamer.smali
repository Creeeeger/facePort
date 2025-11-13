.class Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreECDSASignatureSpi.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncateToFieldSizeMessageStreamer"
.end annotation


# instance fields
.field private blacklist mConsumedInputSizeBytes:J

.field private final blacklist mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private final blacklist mGroupSizeBits:I

.field private final blacklist mInputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;I)V

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    array-length v2, v0

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .locals 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-lez p3, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method
