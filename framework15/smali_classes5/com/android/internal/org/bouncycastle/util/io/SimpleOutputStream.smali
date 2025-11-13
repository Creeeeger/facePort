.class public abstract Lcom/android/internal/org/bouncycastle/util/io/SimpleOutputStream;
.super Ljava/io/OutputStream;
.source "SimpleOutputStream.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    return-void
.end method

.method public whitelist test-api flush()V
    .locals 0

    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    move-object v0, v2

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/internal/org/bouncycastle/util/io/SimpleOutputStream;->write([BII)V

    return-void
.end method
