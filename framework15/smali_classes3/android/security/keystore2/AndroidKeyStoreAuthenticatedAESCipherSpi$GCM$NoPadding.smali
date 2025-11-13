.class public final Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
.super Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final whitelist test-api engineGetOutputSize(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getTagLengthBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const v3, 0x7fffffff

    return v3

    :cond_2
    long-to-int v3, v1

    return v3
.end method

.method public bridge synthetic whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->finalize()V

    return-void
.end method
