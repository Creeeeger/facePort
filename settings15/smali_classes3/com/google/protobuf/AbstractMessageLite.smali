.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# instance fields
.field protected memoizedHashCode:I


# virtual methods
.method public abstract getSerializedSize(Lcom/google/protobuf/Schema;)I
.end method

.method public final toByteArray()[B
    .locals 4

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;-><init>(I[B)V

    move-object v3, p0

    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/GeneratedMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    iget v2, v2, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
