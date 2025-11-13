.class public abstract Lcom/google/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFixed32(IILjava/lang/Object;)V
.end method

.method public abstract addFixed64(IJLjava/lang/Object;)V
.end method

.method public abstract addGroup(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract addVarint(IJLjava/lang/Object;)V
.end method

.method public abstract getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract getSerializedSize(Ljava/lang/Object;)I
.end method

.method public abstract getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
.end method

.method public abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method public abstract merge(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public final mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/CodedInputStreamReader;)Z
    .locals 7

    iget v0, p2, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed32(IILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    shl-int/lit8 v2, v1, 0x3

    or-int/2addr v2, v6

    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/CodedInputStreamReader;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    iget p2, p2, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-ne v2, p2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->addGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    return v3

    :cond_5
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    return v3

    :cond_7
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed64(IJLjava/lang/Object;)V

    return v3

    :cond_8
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5, p1}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(IJLjava/lang/Object;)V

    return v3
.end method

.method public abstract newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract toImmutable(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
.end method

.method public abstract writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
.end method
