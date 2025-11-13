.class public final Lcom/google/common/io/ByteStreams$1;
.super Ljava/io/OutputStream;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ByteStreams.nullOutputStream()"

    return-object p0
.end method

.method public final write(I)V
    .locals 0

    return-void
.end method

.method public final write([B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final write([BII)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p3, p2

    array-length p0, p1

    invoke-static {p2, p3, p0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    return-void
.end method
