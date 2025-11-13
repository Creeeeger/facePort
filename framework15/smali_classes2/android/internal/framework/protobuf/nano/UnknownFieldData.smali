.class final Landroid/internal/framework/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final blacklist bytes:[B

.field final blacklist tag:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    iput-object p2, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    return-void
.end method


# virtual methods
.method blacklist computeSerializedSize()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    iget v3, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method
