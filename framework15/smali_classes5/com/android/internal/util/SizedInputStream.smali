.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SizedInputStream.java"


# instance fields
.field private blacklist mLength:J

.field private final blacklist mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/util/SizedInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_0
    return v3
.end method

.method public whitelist test-api read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    int-to-long v4, p3

    iget-wide v6, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    long-to-int p3, v4

    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected EOF; expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-wide v1, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    :goto_0
    return v0
.end method
